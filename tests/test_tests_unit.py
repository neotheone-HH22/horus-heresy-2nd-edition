import importlib.util
import tempfile
import unittest
from pathlib import Path
from unittest.mock import MagicMock, patch


TESTS_MODULE_PATH = Path(__file__).with_name("tests.py")
spec = importlib.util.spec_from_file_location("nr_tests", TESTS_MODULE_PATH)
nr_tests = importlib.util.module_from_spec(spec)
spec.loader.exec_module(nr_tests)
GameTests = nr_tests.GameTests


class GameTestsUnitCoverage(unittest.TestCase):
    def test_get_error_list_returns_execute_script_result(self):
        case = GameTests("test_NameOfTest")
        case.driver = MagicMock()
        expected = [{"msg": "x", "constraint_id": "y"}]
        case.driver.execute_script.return_value = expected

        result = case.get_error_list()

        self.assertEqual(expected, result)
        case.driver.execute_script.assert_called_once()

    def test_get_squad_cost_returns_single_value_when_one_cost_exists(self):
        case = GameTests("test_NameOfTest")
        case.driver = MagicMock()
        case.driver.execute_script.return_value = {"pts": 170}

        result = case.get_squad_cost("Troops:", "Tactical Support Squad")

        self.assertEqual(170, result)

    def test_get_squad_cost_returns_full_cost_map_when_multiple_costs_exist(self):
        case = GameTests("test_NameOfTest")
        case.driver = MagicMock()
        costs = {"pts": 170, "pl": 9}
        case.driver.execute_script.return_value = costs

        result = case.get_squad_cost("Troops:", "Tactical Support Squad")

        self.assertEqual(costs, result)

    def test_load_system_imports_and_loads_first_system_when_elements_exist(self):
        case = GameTests("test_NameOfTest")
        case.wait = MagicMock()
        import_input = MagicMock()
        first_system = MagicMock()
        case.wait.until.side_effect = [[import_input], [first_system]]

        with patch.dict("os.environ", {"DEFAULT_DATA_DIRECTORY": "/tmp/data"}):
            case.load_system("horus-heresy")

        self.assertEqual("/tmp/data/horus-heresy", case.game_directory)
        import_input.send_keys.assert_called_once_with("/tmp/data/horus-heresy")
        first_system.click.assert_called_once()

    def test_load_system_handles_missing_elements(self):
        case = GameTests("test_NameOfTest")
        case.wait = MagicMock()
        case.wait.until.side_effect = [[], []]

        with patch.dict("os.environ", {"DEFAULT_DATA_DIRECTORY": "/tmp/data"}):
            case.load_system("horus-heresy")

        self.assertEqual("/tmp/data/horus-heresy", case.game_directory)

    def test_load_list_copies_test_file_uploads_and_clicks_first_list(self):
        case = GameTests("test_NameOfTest")
        case.game_directory = "/tmp/data/horus-heresy"
        case.wait = MagicMock()
        import_element = MagicMock()
        clickable_list = MagicMock()
        roster_section = MagicMock()
        case.wait.until.side_effect = [[import_element], clickable_list, roster_section]

        with patch.object(nr_tests.shutil, "copy") as copy_mock, patch.object(nr_tests.EC, "element_to_be_clickable", return_value="clickable"):
            case.load_list("Basic Marines Validate")

        copy_mock.assert_called_once_with(
            "/tmp/data/horus-heresy/tests/Basic Marines Validate.test",
            "/tmp/data/horus-heresy/tests/Basic Marines Validate.ros",
        )
        import_element.send_keys.assert_called_once_with("/tmp/data/horus-heresy/tests/Basic Marines Validate.ros")
        clickable_list.click.assert_called_once()

    def test_verify_no_ros_files_ignores_test_files(self):
        case = GameTests("test_verify_no_ros_files")
        with tempfile.TemporaryDirectory() as tmp_dir:
            case.game_directory = tmp_dir
            tests_dir = Path(tmp_dir) / "tests"
            tests_dir.mkdir(parents=True, exist_ok=True)
            (tests_dir / "only.test").write_text("x", encoding="utf-8")
            case.test_verify_no_ros_files()

    def test_verify_no_ros_files_allows_generated_ros_when_matching_test_exists(self):
        case = GameTests("test_verify_no_ros_files")
        with tempfile.TemporaryDirectory() as tmp_dir:
            case.game_directory = tmp_dir
            tests_dir = Path(tmp_dir) / "tests"
            tests_dir.mkdir(parents=True, exist_ok=True)
            (tests_dir / "list.test").write_text("x", encoding="utf-8")
            (tests_dir / "list.ros").write_text("x", encoding="utf-8")
            case.test_verify_no_ros_files()

    def test_verify_no_ros_files_fails_on_unexpected_ros(self):
        case = GameTests("test_verify_no_ros_files")
        with tempfile.TemporaryDirectory() as tmp_dir:
            case.game_directory = tmp_dir
            tests_dir = Path(tmp_dir) / "tests"
            tests_dir.mkdir(parents=True, exist_ok=True)
            (tests_dir / "bad.ros").write_text("x", encoding="utf-8")
            with self.assertRaises(AssertionError):
                case.test_verify_no_ros_files()


if __name__ == "__main__":
    unittest.main()
