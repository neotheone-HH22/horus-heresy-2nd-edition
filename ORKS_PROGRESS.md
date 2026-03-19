# Waaagh! The Orks! Implementation Progress

**Master Tracking Issue:** TBD (created by `create-all-orks-issues.sh`)

**Source Document:** `Xenologica 2e - Waaaaagh! The Orks!.pdf` (v2.2, 140 pages) by Ana (@anathim#0000)

This document tracks the progress of implementing the Waaagh! The Orks! homebrew army list as BattleScribe/NewRecruit catalog files for Horus Heresy 2nd Edition.

---

## Implementation Status

### Core Rules
- [x] Faction Rules, Warlord Traits, Advanced Reaction & Da Kolours (p4–8)
- [x] Waaagh! Armies (p95–100) — 12 Waaagh! Army types implemented
- [x] Ork Unit Types & Special Rules (p92–94, p101–108) — 80 sharedRules

### Army List — Unit Entries
- [x] HQ Units (p10–20) — 9 generic HQ entries + Ork Baron
- [x] Elite Units (p22–30) — 9 entries
- [x] Troops & Dedicated Transports (p32–40) — Issue: #198, 8 troops + 1 DT
- [x] Fast Attack Units (p42–51) — Issue: #199, 10 entries (3 Cavalry + 2 Squadrons + 5 Flyers/Vehicles)
- [x] Heavy Support: Infantry, Walkers & Beasts (p53–57) — Lootas Mob, Mega-Dread, Squiggoth, Hunta Rig, Kill Rig
- [x] Heavy Support: Vehicles (p58–65) — Issue: #201, Battlewagons, Gunwagon, Killwagons, Big Trakks, Looted Wagon, Grot Tanks, Grot Mega-Tanks
- [x] Heavy Support: Aircraft & Artillery (p66–70) — Issue: #202 (merged into vehicles)
- [x] Lords of War (p72–84) — Issue: #203, 12 entries
- [x] Fortifications (p87–90) — Issue: #204, 4 entries (Big Waaagh! Banner, Gargant 'Ead Bunka, Kustom Workshop, Mek Supa-Gunz)

### Shared Resources
- [x] Weapon Profiles — Ranged & Melee (p109–117) — 136 weapon profiles
- [x] Wargear & Psychic Disciplines (p118–124) — 37 wargear + 2 disciplines

### Named Characters
- [x] Dramatis Personae (p125–136) — 10 named characters (Zagstruk, Badrukk, Snikrot, Grotsnik, Zhadsnark, Mozrog, Buzzgob, Zodgrod, Ghazghkull, Makari)

---

## Recommended Implementation Order

The following order is recommended to minimize dependencies between issues:

1. **Weapon Profiles** — Shared profiles referenced by all units
2. **Wargear & Psychic Disciplines** — Shared equipment referenced by all units
3. **Ork Unit Types & Special Rules** — Foundation rules needed before units
4. **Faction Rules, Warlord Traits, Advanced Reaction & Da Kolours** — Core faction mechanics
5. **Troops & Dedicated Transports** — Core army backbone (Trukk needed as DT)
6. **HQ Units** — Leaders reference Troop options and mounts
7. **Elite Units** — Includes Meks/Painboyz that attach to other units
8. **Fast Attack Units** — Includes Warkopta (DT in some Waaagh! Armies)
9. **Heavy Support: Infantry, Walkers & Beasts** — Squiggoth (DT in Stampedin' Waaagh!)
10. **Heavy Support: Vehicles** — Battlewagon/Gunwagon/Big Trakk (DT in Mek Waaagh!)
11. **Heavy Support: Aircraft & Artillery** — Bombers and static guns
12. **Lords of War** — Gorkanaut/Morkanaut (DT in Da 'Ardest Waaagh!)
13. **Fortifications** — Independent from other units
14. **Waaagh! Armies** — Requires all units to exist first (modifies FOC and DT)
15. **Dramatis Personae** — Named characters with unique rules and weapons

---

## PDF Structure Overview

| Section | Pages | Units/Items | Issue |
|---------|-------|-------------|-------|
| Faction & Allegiances | 4 | Allegiances, Digganobz Provenance | ✅ Done |
| Warlord Traits | 5 | 6 traits | ✅ Done |
| Advanced Reaction | 6 | Git'em! | ✅ Done |
| Da Kolours | 7–8 | 7 colours | ✅ Done |
| **HQ** | 10–20 | 10 entries (Warboss with 5 upgrades) | ✅ Done |
| **Elites** | 22–30 | 9 entries | ✅ Done |
| **Troops & DT** | 32–40 | 8 troops + 1 DT | #198 ✅ |
| **Fast Attack** | 42–51 | 10 entries | #199 ✅ |
| **Heavy Support** | 53–70 | 18 entries (split into 3 issues) | #200/#201/#202 ✅ |
| **Lords of War** | 72–84 | 12 entries | #203 ✅ |
| **Fortifications** | 87–90 | 4 entries | #204 ✅ |
| Ork Unit Types | 92–93 | 7 types (Mob, Ramshackle, Skirmish, Emplacement, Gargantuan, Prime-Ork, Gargantuan Prime-Ork) | ✅ Done |
| Waaagh! Special Rule | 94 | Calling a Waaagh! | ✅ Done |
| Waaagh! Armies | 95–100 | 12 army types | ✅ Done |
| Ork Special Rules | 101–108 | ~25 special rules | ✅ Done |
| Ranged Weapons | 109–114 | ~50+ profiles | ✅ Done |
| Melee Weapons | 115–117 | ~25+ profiles | ✅ Done |
| Wargear | 118–122 | ~20+ items | ✅ Done |
| Psychic Disciplines | 123–124 | 2 disciplines (Waaagh!, Beasthead) | ✅ Done |
| Dramatis Personae | 125–136 | 10 named characters | ✅ Done |
| FAQ | 137 | 3 Q&A entries | — |
| Base Size Guide | 138–139 | All unit base sizes | — |
| Changelog | 140 | v2.1 and v2.2 changes | — |

---

## Implementation Guidelines

### For Contributors
1. **Reference the master tracking issue** in all related PRs
2. **Provide before/after snippets** for unit/weapon changes where possible
3. **Ensure BattleScribe validation passes** after file updates
4. **One PR per sub-issue** to keep changes focused and reviewable
5. **Use the BattleScribe data editor** to make changes (not direct XML editing when possible)
6. **Follow existing catalog patterns** — see `2022 - LI - Asuryani.cat` for a Xenos faction example

### Catalog File
- **Filename:** `2022 - LI - Orks.cat`
- **Faction:** Xenos → Orks sub-faction
- **Game System:** `2022 - Horus Heresy.gst`

### Key Differences from Other Army Lists
- **Da Kolours** — Every unit selects a colour, similar to Legion-specific rules
- **Mob sub-type** — Unique morale mechanic (model count substitutes for Ld)
- **Ramshackle sub-type** — Unique vehicle damage mitigation
- **Waaagh! Armies** — Similar to Rites of War but Ork-specific
- **Prime-Ork** — Equivalent to Primarch unit type
- **Mekaniaks/Painboyz Workshops** — Characters that attach to units (like Apothecaries)
- **BS 2** — Standard Ork Ballistic Skill is 2, not 4

### Testing Approach
1. Load updated catalog in BattleScribe or NewRecruit
2. Create test rosters exercising changed units/options
3. Verify points costs and special rules display correctly
4. Run automated validation via CI workflow
5. Test Waaagh! Army interactions (FOC changes, DT options)

---

## Notes

- **Xenologica 2e** is a homebrew supplement, not an official GW publication
- The Orks army list is v2.2 with changelog entries for v2.1 and v2.2
- All changes must maintain BattleScribe XML validity
- Files use CRLF line endings (enforced by `.gitattributes`)
- The `2022 - LI - Asuryani.cat` Eldar catalog is the closest existing example of a Xenos faction implementation

---

**Last Updated:** 2026-03-19
**Status:** All sections implemented — 76 units across 7 Force Org slots (HQ, Elites, Troops, Fast Attack, Heavy Support, Lords of War, Fortifications) + Primarch
