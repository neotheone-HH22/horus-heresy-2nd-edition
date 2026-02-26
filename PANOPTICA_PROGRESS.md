# Liber Panoptica Implementation Progress

**Master Tracking Issue:** #52

This document tracks the progress of applying Liber Panoptica changes across all BattleScribe catalog files for Horus Heresy 2nd Edition.

---

## Implementation Status

### Core Files
- [ ] Core Game File (`2022 - Horus Heresy.gst`) - Issue: TBD
- [ ] Legiones Astartes Shared (`2022 - Legiones Astartes.cat`) - Issue: TBD

### Legiones Astartes (Space Marine Legions)
- [ ] Dark Angels - Issue: TBD
- [x] White Scars - Issue: #56 | PR: #83 (Open)
- [x] Space Wolves - Issue: #57 | PR: #84, #107 (Open)
- [x] Imperial Fists - Issue: #58 | PR: #85 (Open)
- [x] Blood Angels - Issue: #59 | PR: #86 (Open)
- [x] Iron Hands - Issue: #60 | PR: #87 (Open)
- [x] World Eaters - Issue: #61 | PR: TBD
- [x] Ultramarines - Issue: #62 | PR: TBD
- [x] Night Lords - Issue: #63 | PR: TBD
- [ ] Emperor's Children - Issue: TBD
- [x] Iron Warriors - Issue: #65 | PR: #90 (Open)
- [x] Thousand Sons - Issue: #66 | PR: #92 (Open)
- [ ] Sons of Horus - Issue: TBD
- [x] Word Bearers - Issue: #68 | PR: #94 (Open)
- [x] Salamanders - Issue: #69 | PR: #95 (Open)
- [x] Raven Guard - Issue: #70 | PR: TBD
- [x] Alpha Legion - Issue: #71 | PR: #97 (Open)

### Other Armies
- [ ] Mechanicum - Issue: TBD
- [x] Questoris Knights & Titan Legions - Issue: #73
- [x] Custodes & Sisters of Silence - Issue: #74
- [ ] Solar Auxilia - Issue: TBD
- [x] Assassins - Issue: #76 | PR: #102 (Open)
- [x] Imperialis Militia - Issue: #77 | PR: #90, #103 (Open)
- [ ] Daemons of the Ruinstorm - Issue: TBD
- [ ] Legacies & Exemplary Battles - Issue: TBD

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
The following catalog files still need sub-issues created:
1. Core Game File (`2022 - Horus Heresy.gst`)
2. Legiones Astartes Shared (`2022 - Legiones Astartes.cat`)
3. Dark Angels
4. Emperor's Children
5. Sons of Horus
6. Mechanicum
7. Solar Auxilia
8. Daemons of the Ruinstorm
9. Legacies & Exemplary Battles

### Pending PRs
The following issues have been created but don't have PRs yet:
- #61: World Eaters
- #62: Ultramarines
- #63: Night Lords
- #70: Raven Guard
- #73: Questoris Knights & Titan Legions
- #74: Custodes & Sisters of Silence

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

**Last Updated:** 2026-02-26
**Status:** Implementation in progress across multiple PRs
