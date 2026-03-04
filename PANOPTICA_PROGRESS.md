# Liber Panoptica Implementation Progress

**Master Tracking Issue:** #52

This document tracks the progress of applying Liber Panoptica changes across all BattleScribe catalog files for Horus Heresy 2nd Edition.

---

## Implementation Status

### Core Files
- [ ] Core Game File (`2022 - Horus Heresy.gst`) - Issue: #53
- [ ] Legiones Astartes Shared (`2022 - Legiones Astartes.cat`) - Issue: #54

### Legiones Astartes (Space Marine Legions)
- [ ] Dark Angels - Issue: #55
- [x] White Scars - Issue: #56 | PR: #83 (Open)
- [x] Space Wolves - Issue: #57 | PR: #84, #107 (Open)
- [x] Imperial Fists - Issue: #58 | PR: #85 (Open)
- [x] Blood Angels - Issue: #59 | PR: #86 (Open)
- [x] Iron Hands - Issue: #60 | PR: #87 (Open)
- [x] World Eaters - Issue: #61 | PR: TBD
- [x] Ultramarines - Issue: #62 | PR: TBD
- [x] Night Lords - Issue: #63 | PR: TBD
- [ ] Emperor's Children - Issue: #64
- [x] Iron Warriors - Issue: #65 | PR: #90 (Open)
- [x] Thousand Sons - Issue: #66 | PR: #92 (Open)
- [ ] Sons of Horus - Issue: #67
- [x] Word Bearers - Issue: #68 | PR: #94 (Open)
- [x] Salamanders - Issue: #69 | PR: #95 (Open)
- [x] Raven Guard - Issue: #70 | PR: TBD
- [x] Alpha Legion - Issue: #71 | PR: #97 (Open)
- [ ] Death Guard - Issue: TBD

### Other Armies
- [ ] Mechanicum - Issue: #72
- [x] Questoris Knights & Titan Legions - Issue: #73
- [x] Custodes & Sisters of Silence - Issue: #74
- [ ] Solar Auxilia - Issue: #75
- [x] Assassins - Issue: #76 | PR: #102 (Open)
- [x] Imperialis Militia - Issue: #77 | PR: #90, #103 (Open)
- [ ] Daemons of the Ruinstorm - Issue: #78
- [ ] Legacies & Exemplary Battles - Issue: #79

### Additional Army Lists
- [ ] Blackshields - Issue: TBD
- [ ] Shattered Legions - Issue: TBD
- [x] Bound Daemons - Issue: TBD | PR: #128

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

### Missing Sub-Issues
The following catalog files exist in the repository but were not included in the original `create-all-panoptica-issues.sh` script. Sub-issues have been added to the script and need to be created in GitHub:
- Death Guard (`2022 - LA - Death Guard.cat`) — the XIV Legion was omitted from the original script
- Blackshields (`2022 - BG - Blackshields.cat`)
- Shattered Legions (`Shattered Legions.cat`)
- Bound Daemons (`2022 - Daemons - Bound Daemons.cat`)

Note: `2022 - Mech Library.cat` and `Daemon Library.cat` are shared library files (`library="true"`) and are covered by the Mechanicum and Daemons issues respectively.

### Pending PRs
The following issues have been created but don't have PRs yet:
- #61: World Eaters
- #62: Ultramarines
- #63: Night Lords
- #70: Raven Guard
- #73: Questoris Knights & Titan Legions
- #74: Custodes & Sisters of Silence

The following issues need to be created first (via the updated `create-all-panoptica-issues.sh`):
- TBD: Death Guard
- TBD: Blackshields
- TBD: Shattered Legions
- TBD: Bound Daemons

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
**Status:** Implementation in progress across multiple PRs; 4 additional catalog files identified and sub-issues added to tracking script
