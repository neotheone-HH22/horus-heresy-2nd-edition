# Liber Panoptica Implementation Progress

**Master Tracking Issue:** #52 (Closed)

This document tracks the progress of applying Liber Panoptica changes across all BattleScribe catalog files for Horus Heresy 2nd Edition.

---

## Open Issues (from create-all-panoptica-issues.sh)

The following issues created by `create-all-panoptica-issues.sh` are currently **open** on GitHub:

| Issue | Title | Status |
|-------|-------|--------|
| [#61](https://github.com/neotheone-HH22/horus-heresy-2nd-edition/issues/61) | Panoptica Update: World Eaters | 🟡 Open |
| [#62](https://github.com/neotheone-HH22/horus-heresy-2nd-edition/issues/62) | Panoptica Update: Ultramarines | 🟡 Open |
| [#63](https://github.com/neotheone-HH22/horus-heresy-2nd-edition/issues/63) | Panoptica Update: Night Lords | 🟡 Open |

All other issues from the script (#52–#60, #64–#79) are **closed**.

---

## Implementation Status

### Core Files
- [x] Core Game File (`2022 - Horus Heresy.gst`) - Issue: #53 (Closed)
- [x] Legiones Astartes Shared (`2022 - Legiones Astartes.cat`) - Issue: #54 (Closed)

### Legiones Astartes (Space Marine Legions)
- [x] Dark Angels - Issue: #55 (Closed)
- [x] White Scars - Issue: #56 (Closed) | PR: #83
- [x] Space Wolves - Issue: #57 (Closed) | PR: #84, #107
- [x] Imperial Fists - Issue: #58 (Closed) | PR: #85
- [x] Blood Angels - Issue: #59 (Closed) | PR: #86
- [x] Iron Hands - Issue: #60 (Closed) | PR: #87
- [ ] **World Eaters - Issue: #61 (Open)** | PR: TBD
- [ ] **Ultramarines - Issue: #62 (Open)** | PR: TBD
- [ ] **Night Lords - Issue: #63 (Open)** | PR: TBD
- [x] Emperor's Children - Issue: #64 (Closed)
- [x] Iron Warriors - Issue: #65 (Closed) | PR: #90
- [x] Thousand Sons - Issue: #66 (Closed) | PR: #92
- [x] Sons of Horus - Issue: #67 (Closed)
- [x] Word Bearers - Issue: #68 (Closed) | PR: #94
- [x] Salamanders - Issue: #69 (Closed) | PR: #95
- [x] Raven Guard - Issue: #70 (Closed)
- [x] Alpha Legion - Issue: #71 (Closed) | PR: #97

### Other Armies
- [x] Mechanicum - Issue: #72 (Closed)
- [x] Questoris Knights & Titan Legions - Issue: #73 (Closed)
- [x] Custodes & Sisters of Silence - Issue: #74 (Closed)
- [x] Solar Auxilia - Issue: #75 (Closed)
- [x] Assassins - Issue: #76 (Closed) | PR: #102
- [x] Imperialis Militia - Issue: #77 (Closed) | PR: #90, #103
- [x] Daemons of the Ruinstorm - Issue: #78 (Closed)
- [x] Legacies & Exemplary Battles - Issue: #79 (Closed)

---

## Open Pull Requests

### In Review
- PR #83: White Scars Panoptica Update
- PR #84: Space Wolves FAQ/Errata/Balance changes
- PR #85: Imperial Fists Panoptica changes
- PR #86: Blood Angels Panoptica Update
- PR #87: Iron Hands Panoptica Changes
- PR #90: Imperialis Militia (partial)
- PR #92: Thousand Sons Panoptica changes
- PR #94: Word Bearers Panoptica changes
- PR #95: Salamanders Panoptica changes
- PR #97: Alpha Legion Panoptica changes
- PR #102: Assassins Panoptica changes
- PR #103: Imperialis Militia Panoptica changes
- PR #107: Space Wolves Panoptica Update (alternate)

### Merged
_None yet_

---

## Remaining Work

### Open Issues Requiring PRs
The following issues are still **open** on GitHub and need PRs:
- [#61](https://github.com/neotheone-HH22/horus-heresy-2nd-edition/issues/61): World Eaters
- [#62](https://github.com/neotheone-HH22/horus-heresy-2nd-edition/issues/62): Ultramarines
- [#63](https://github.com/neotheone-HH22/horus-heresy-2nd-edition/issues/63): Night Lords

---

## Implementation Guidelines

### For Contributors
1. **Reference the master issue (#52)** in all related PRs
2. **Provide before/after snippets** for unit/weapon changes where possible
3. **Ensure BattleScribe validation passes** after file updates
4. **One PR per catalog file** to keep changes focused and reviewable
5. **Use the BattleScribe data editor** to make changes (not direct XML editing when possible)

### Testing Approach
1. Load updated catalogs in BattleScribe or NewRecruit
2. Create test rosters exercising changed units/options
3. Verify points costs and special rules display correctly
4. Run automated validation via CI workflow

### File Relationships
- **Core changes** in `2022 - Horus Heresy.gst` affect all armies
- **Shared Legion changes** in `2022 - Legiones Astartes.cat` affect all 18 Legions
- **Legion-specific changes** go in individual `2022 - LA - [Legion].cat` files
- **Cross-references** between files should use proper `entryLink` and `infoLink` elements

---

## Key Panoptica Changes by Category

### Common Changes Across Legions
- Named character stat updates (Primarchs, special characters)
- Unit type/sub-type modifications (Infantry → Infantry (Skirmish), etc.)
- Dedicated Transport option changes
- Weapon profile updates (AP, Type, special rules)
- Points cost adjustments

### Rite of War Updates
- Structural changes to force organization requirements
- Benefit/limitation modifications
- Compulsory choice updates

### Special Rules
- New special rule additions (e.g., Augmetics, Skirmish)
- Rule clarifications and FAQ entries
- Reaction system changes

---

## Notes

- **Liber Panoptica** is a community-driven FAQ/errata/balance document
- **Publication ID** for Panoptica references: `8775-88f5-cfdd-24f6`
- Changes include numerical adjustments (points, stats) and structural changes (rules, options)
- All changes must maintain BattleScribe XML validity
- Files use CRLF line endings (enforced by `.gitattributes`)

---

**Last Updated:** 2026-03-04
**Status:** 3 issues remain open (#61, #62, #63); all others closed
