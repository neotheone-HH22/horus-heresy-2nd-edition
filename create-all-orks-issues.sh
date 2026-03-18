#!/bin/bash
# =============================================================
# Create all Orks tracking issues for
# neotheone-HH22/horus-heresy-2nd-edition
# =============================================================
# Prerequisites: Install GitHub CLI (gh) and authenticate:
#   brew install gh   (or see https://cli.github.com/)
#   gh auth login
# =============================================================
# Source: Xenologica 2e - Waaaaagh! The Orks! (v2.2, 140 pages)
# =============================================================

REPO="neotheone-HH22/horus-heresy-2nd-edition"

# =============================================================
# MASTER TRACKING ISSUE
# =============================================================
gh issue create --repo "$REPO" \
  --title "Tracking: Implement Waaagh! The Orks! army list in BattleScribe" \
  --label "tracking" --label "Orks" \
  --assignee neotheone-HH22 \
  --body "## Waaagh! The Orks! — Master Tracking Issue

This issue tracks the full implementation of the **Xenologica 2e – Waaaaagh! The Orks!** homebrew army list (v2.2, 140 pages) as BattleScribe/NewRecruit catalog files for Horus Heresy 2nd Edition.

---

### Source Document
\`Xenologica 2e - Waaaaagh! The Orks!.pdf\` (v2.2) by Ana (@anathim#0000 on Discord)

### Scope
- Create a new catalog file (\`2022 - LI - Orks.cat\`) for the Waaagh! The Orks! army list
- Implement all unit entries, weapon profiles, wargear, special rules, and psychic disciplines
- Implement faction rules (Da Kolours, Warlord Traits, Advanced Reaction, Waaagh! Armies)
- Implement Dramatis Personae (named characters)
- Ensure BattleScribe/NewRecruit validation passes

### Sub-Issues Checklist
_Update with issue numbers once all sub-issues are created_

#### Core Rules
- [ ] Faction Rules, Warlord Traits, Advanced Reaction & Da Kolours (p4–8)
- [ ] Waaagh! Armies (p95–100)
- [ ] Ork Unit Types & Special Rules (p92–94, p101–108)

#### Army List – Unit Entries
- [ ] HQ Units (p10–20)
- [ ] Elite Units (p22–30)
- [ ] Troops & Dedicated Transports (p32–40)
- [ ] Fast Attack Units (p42–51)
- [ ] Heavy Support: Infantry, Walkers & Beasts (p53–57)
- [ ] Heavy Support: Vehicles (p58–65)
- [ ] Heavy Support: Aircraft & Artillery (p66–70)
- [ ] Lords of War (p72–84)
- [ ] Fortifications (p87–90)

#### Shared Resources
- [ ] Weapon Profiles – Ranged & Melee (p109–117)
- [ ] Wargear & Psychic Disciplines (p118–124)

#### Named Characters
- [ ] Dramatis Personae (p125–136)

---

### Action Plan
1. Create the catalog file skeleton (\`2022 - LI - Orks.cat\`) with faction & allegiance settings
2. Implement shared resources first (weapon profiles, wargear, special rules)
3. Build unit entries per Force Organisation slot (HQ → Elites → Troops → Fast Attack → Heavy Support → Lords of War → Fortifications)
4. Add Waaagh! Armies as selectionEntryGroups
5. Add Dramatis Personae as unique HQ/character entries
6. Validate in BattleScribe/NewRecruit

### If you contribute
- Please reference this issue in your PR
- Provide unit/weapon before/after snippets where possible
- Ensure BattleScribe validation passes after file updates
- One PR per sub-issue to keep changes focused and reviewable"

echo "Created: Master Tracking Issue"
sleep 2

# =============================================================
# SUB-ISSUE 1: Faction Rules, Warlord Traits, Advanced Reaction & Da Kolours
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Faction Rules, Warlord Traits, Advanced Reaction & Da Kolours (p4–8)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement core Ork faction rules in the catalog

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 4–8

### Faction & Allegiances (p4)
- [ ] Xenos faction, Orks sub-faction
- [ ] Alliance levels:
  - Sworn Brothers: none
  - Fellow Warriors: none
  - Distrusted Allies: Agents of the Warmaster, Legiones Astartes, Imperial Army, unlisted Xenos
  - By the Emperor's Order: Agents of the Imperium, Mechanicum, Daemons of the Ruinstorm, T'au Empire, Leagues of Votann
- [ ] Imperial Militia Provenance: **Digganobz** (Xenos faction, Fellow Warriors with Orks, Stubborn within 12\" of Orks units)

### Warlord Traits (p5)
- [ ] Arch-Tyrant (Fearless bubble 12\" for Mob units + extra Assault Reaction)
- [ ] Blessed by Gork (or possibly Mork) (3 blessing dice per turn + extra Assault Reaction)
- [ ] Like a Thunderbolt (6\" move toward attacker in Shooting phase + extra Assault Reaction)
- [ ] Brutal (but kunnin') (Rage D3+1, Counter-Attack D3 + extra Assault Reaction)
- [ ] Kunnin' (but brutal) (Scouts + Outflank for 1 Troops per 1000pts + extra Assault Reaction)
- [ ] Best of the Beasts (Battle-Hardened 1, Skarboyz upgrade for 1 Nobz/Meganobz/Nob Bikerz unit + extra Assault Reaction)

### Advanced Reaction (p6)
- [ ] **Git'em!** (Assault phase; after enemy fails charge → reacting Orks unit within 12\" charges with Rage 2; once per battle)

### Da Kolours (p7–8)
- [ ] Da Kolours (X) special rule framework (one Kolour per unit, no mixing)
- [ ] Red Wunz Go Faster (+1 Movement, Light sub-type; Heavy loses Heavy instead)
- [ ] Black Is Ded 'Ard (S=T wounds on 5+ instead of 4+; AP beats AV by 1 → Glancing)
- [ ] Yellow Goes Bomm (+1S on To Hit rolls of 6; +1S on Direct Hit for Blast)
- [ ] Blue Gots All Da Luck (re-roll one To Hit, To Wound, Saving Throw per phase per unit)
- [ ] White Means Deff (on 5+ To Wound/AP: -1 to Armour/Damage Mitigation saves)
- [ ] But Green Is Best (+1 WS in CC with another friendly Green unit; +1S on Ram/HoW)
- [ ] No Wun's Eva Seen A Purple Ork (+2\" effective range for enemy Shooting/Charges/Reactions)

---
**Reference:** Master tracking issue"

echo "Created: Faction Rules, Warlord Traits, Advanced Reaction & Da Kolours"
sleep 2

# =============================================================
# SUB-ISSUE 2: Waaagh! Armies
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Waaagh! Armies (p95–100)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Waaagh! Armies (Rites of War equivalent)

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 95–100

Waaagh! Armies require a Warlord with the Waaagh! special rule and at least 1000 pts. Each provides Effects and Limitations.

### Waaagh! Armies to Implement
- [ ] **Air Waaagh!** — Warkopta as DT; Flyer Strafing Run (1) on arrival; re-roll Crashes & Burns scatter. Requires Baron with Waaagh!, more Flyers than Troops, no non-Flyer HS/LoW.
- [ ] **Beast Snaggin' Waaagh!** — Monster Hunter re-rolls vs Gargantuan/Super-Heavy; Wildboyz ≤10 get Kill Rig DT. Requires Wildboss Warlord + Weirdboy/Weirdboss; more Monstrous than Vehicle/Dread.
- [ ] **Da 'Ardest Waaagh!** — Meganobz as Troops; Meganobz ≤3 get Gorkanaut/Morkanaut DT; +2 Elite slots (Nobz/Meganobz/Bikers only). Requires Megaboss or Ghazghkull; 1 FA + 1 HS max.
- [ ] **Da Green Tide** — Boyz Wave/Unwashed Hordes gain Unending Horde (4+); multi-unit Charges not Disordered; reserves enter from any edge. +2 Compulsory Troops (Boyz Wave only).
- [ ] **Dread Waaagh!** — Killa Kans gain Line; Dreads get Rampage (1) + 18\" Charge on Waaagh!. Killa Kans as Troops; requires Big Mek/Meka-Dread with Waaagh!; 1 FA max.
- [ ] **Looted Waaagh!** — One FA/HS Vehicle from another army list (BS2, Ramshackle, Da Kolours); Looted Wagons as Troops with Line. Compulsory Troops = Lootas; requires Mekaniaks per Lootas unit.
- [ ] **Mek Waaagh!** — One LoW as HS (single model); Battlewagon/Gunwagon/Big Trakk as DT. Requires Big Mek with Waaagh! as Warlord; more Vehicles than other units.
- [ ] **Speed Waaagh!** — Warbikers/Deffkoptas as Troops (Warbikers Compulsory gain Line); Vehicles gain Mega-Charga. Requires Speedboss; no Dread/Reinforced/Bombard/Artillery.
- [ ] **Stampedin' Waaagh!** — Squighog Boyz as Compulsory Troops with Line; Squiggoth as DT; Gargantuan Squiggoth as HS; +2 Movement turn 1. Requires mount Warlord; ≤1 Vehicle + ≤1 Dread.
- [ ] **Sekret Waaagh!** — Kommandos lose Support Squad; Flanking Assaults auto-succeed on Waaagh! turn; 1 unit gets Infiltrate. Requires Snikboss; Compulsory = Kommandos; ≤1 HS.
- [ ] **Tellyported Waaagh!** — All non-Super-Heavy gain Deep Strike; Line on Deep Strike Assault turn. Requires Big Mek with Tellyport Beacon deployed; half units must Deep Strike; no Flyers.
- [ ] **Wreckin' Waaagh!** — Tankbustas/Wreckas gain Line, lose Support Squad; re-roll AP/VDT of 1 when within 12\"; Looted Wagon DT for ≤8 models. Requires 1+ Tankbustas + 1+ Wreckas as Compulsory Troops.

---
**Reference:** Master tracking issue"

echo "Created: Waaagh! Armies"
sleep 2

# =============================================================
# SUB-ISSUE 3: Ork Unit Types & Special Rules
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Ork Unit Types & Special Rules (p92–94, p101–108)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork unit types and special rules

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 92–94, 101–108

### Ork Unit Sub-types (p92–93)
- [ ] **Mob** — Substitute model count for Ld (max 10); Fearless at 11+ Mob models; Bulky counts
- [ ] **Ramshackle** — 6+ Invuln (not vs Ordnance/Destroyer); custom Explodes table (Skrrronk/Vlam!/Carreen); non-Vehicle D6\" explosion on death
- [ ] **Skirmish** — 3\" coherency; +1 Cover Save from terrain
- [ ] **Emplacement** — AV instead of Toughness; cannot Move
- [ ] **Gargantuan** — Eternal Warrior, Fearless, ignore negative Characteristic mods, no Difficult Terrain penalty, count as 10 models, fire all weapons, Stationary for Heavy/Ordnance, immune to Psychic
- [ ] **Prime-Ork** unit type — Counts as Primarch; EW, Fearless, IWND (5+), Bulky (6), IC, Relentless; allocate Hits; must be Warlord
- [ ] **Gargantuan Prime-Ork** unit type — Gargantuan + Prime-Ork; no IC

### The Waaagh! Special Rule (p94)
- [ ] Calling a Waaagh! — Mob models gain Rage (2); Mob-majority units roll extra Charge die + 18\" Charge range; once per battle per Detachment

### Ork Special Rules (p101–108)
- [ ] 'Ard Case (ignore Instant Death; lose 3W instead)
- [ ] Boyz Wave (model count and composition rule)
- [ ] Cybork Body (FNP 6+ vs ranged only; no Reactions)
- [ ] Da Boss (grants Waaagh! aura effects)
- [ ] Da Great Waaagh! (enhanced Waaagh! for Prime-Orks)
- [ ] Dok Tools (healing/augmenting rules)
- [ ] Fasta Dan Ya Fink (out-of-sequence movement rules)
- [ ] Flash of Kolours (Da Kolours interaction)
- [ ] Flyin' 'Eadbutt (impact attack on Charge)
- [ ] Follow Da Boss (re-roll Morale within range)
- [ ] Git Finda (targeting improvement)
- [ ] Grot Shield (ablative Gretchin models)
- [ ] Kustom Job (vehicle upgrade mechanics)
- [ ] Mek Tools (vehicle repair rules)
- [ ] Mob Up (merge two units)
- [ ] More Dakka (enhanced Shooting rules)
- [ ] Pyromania (fire-related bonuses)
- [ ] Ramshackle Colossus (enhanced Ramshackle for super-heavies)
- [ ] Rolling Scrap Pile (self-repair for vehicles)
- [ ] Sneaky Gitz (stealth/ambush rules)
- [ ] Sniper (enhanced shooting accuracy)
- [ ] The Unwashed Hordes (Gretchin horde rule)
- [ ] Waaagh! Energy (psychic power source)
- [ ] And all other special rules listed in p101–108

---
**Reference:** Master tracking issue"

echo "Created: Ork Unit Types & Special Rules"
sleep 2

# =============================================================
# SUB-ISSUE 4: HQ Units
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: HQ Units (p10–20)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork HQ unit entries

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 10–20

### Units to Implement
- [ ] **Ork Warboss** (80 pts) — M7 WS6 BS2 S6 T5 W3 I4 A4 Ld9 Sv6+; Infantry (Mob, Character); upgrades: Boss Kaptin / Painboss / Snikboss / Wildboss / Weirdboss; mount options: Warbike / Rokkit Pack / Squigosaur
- [ ] **Ork Megaboss** (p12) — Mega-Armour HQ; points and profile from PDF
- [ ] **Ork Speedboss** (p13) — Vehicle-mounted HQ; points and profile from PDF
- [ ] **Ork Big Nob** (p14) — Junior HQ character; mount options
- [ ] **Ork Big Nob in Mega-Armour** (p15) — Mega-armoured Big Nob variant
- [ ] **Ork Big Mek** (p16) — Mek HQ; Mek Tools; mount options: Warbike / Deffkopta
- [ ] **Ork Big Mek in Mega-Armour** (p17) — Mega-armoured Big Mek variant
- [ ] **Kustom Meka-Dread** (p18) — Dreadnought HQ; Mek Tools; vehicle profile
- [ ] **Ork Weirdboy** (p19) — Psyker HQ; Waaagh! Energy; selects Psychic Discipline
- [ ] **Ork Baron** (p20) — Flyer HQ (aircraft); not a Character; used by Air Waaagh!

### Implementation Notes
- Warboss has 5 mutually exclusive upgrade paths (Boss Kaptin, Painboss, Snikboss, Wildboss, Weirdboss), each with additional sub-options
- Mount options (Warbike, Rokkit Pack, Squigosaur) change Unit Type
- Big Mek mount options include Deffkopta (unique among HQs)
- Baron is a Flyer unit type — unique for an HQ choice

---
**Reference:** Master tracking issue"

echo "Created: HQ Units"
sleep 2

# =============================================================
# SUB-ISSUE 5: Elite Units
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Elite Units (p22–30)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork Elite unit entries

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 22–30

### Units to Implement
- [ ] **Ork Deff Dread Mob** (p22) — Dreadnought unit; squadron of 1–3; DCCW options
- [ ] **Gretchin Killa Kans Mob** (p23) — Light Dreadnought unit; squadron of 3–6
- [ ] **Ork Burnaboyz Mob** (p24) — Infantry (Mob); Burnas or Lootas weapon options
- [ ] **Ork Nobz** (p25) — Infantry (Mob, Heavy); 5–10 models; extensive wargear options
- [ ] **Ork Meganobz** (p26) — Infantry (Mob, Heavy); Mega-Armour; 3–10 models
- [ ] **Ork Nob Bikers** (p27) — Cavalry (Mob); Warbike-mounted Nobz
- [ ] **Ork Flash Gitz** (p28) — Infantry (Mob, Heavy); Snazzguns; 5–10 models
- [ ] **Ork Mekaniaks Workshop** (p29) — Mek characters that attach to other units
- [ ] **Ork Painboyz Workshop** (p30) — Painboy characters that attach to other units

### Implementation Notes
- Mekaniaks and Painboyz Workshops are not traditional units; they produce individual Mek/Painboy models that attach to other units (similar to Apothecaries/Techmarines in Astartes)
- Deff Dreads and Killa Kans are Dreadnought type with vehicle-style weapon options
- Nobz have very extensive weapon swap options (Choppas → Big Choppas, Power Klaws, Killsaws, etc.)

---
**Reference:** Master tracking issue"

echo "Created: Elite Units"
sleep 2

# =============================================================
# SUB-ISSUE 6: Troops & Dedicated Transports
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Troops & Dedicated Transports (p32–40)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork Troops and Dedicated Transport entries

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 32–40

### Troop Units to Implement
- [ ] **Ork Slugboyz Mob** (p32) — Infantry (Mob); Slugga + Choppa; 10–30 models; Boyz Wave
- [ ] **Ork Shotboyz Mob** (p33) — Infantry (Mob); Shotgunz; 10–30 models; Boyz Wave
- [ ] **Ork Wildboyz Mob** (p34) — Infantry (Mob, Skirmish); primitive weapons; 10–20 models; Monster Hunter
- [ ] **Ork Kommandos Mob** (p35) — Infantry (Mob, Skirmish); Infiltrate, Sneaky Gitz; 10–15 models; Support Squad
- [ ] **Ork Tankbustas Mob** (p36) — Infantry (Mob); Rokkit Launchas; 5–15 models; Tank Hunters; Support Squad
- [ ] **Ork Wrecka Mob** (p37) — Infantry (Mob); melee anti-vehicle; 5–15 models; Support Squad
- [ ] **Ork Stormboyz Mob** (p38) — Infantry (Mob); Rokkit Packs (Jump); 5–20 models; Flyin' 'Eadbutt
- [ ] **Gretchin** (p39) — Infantry (Mob); 10–30 Gretchin + Runtherd; The Unwashed Hordes

### Dedicated Transport
- [ ] **Ork Trukk** (p40) — Vehicle (Open-topped, Transport 12, Ramshackle); available to most Troops

### Implementation Notes
- Slugboyz and Shotboyz are the core Line troops with Boyz Wave special rule
- Kommandos, Tankbustas, and Wreckas have Support Squad (no Line)
- Gretchin use The Unwashed Hordes rule and have Runtherd character model
- Trukk is the standard Dedicated Transport (capacity 12)
- Many units get Trukk as DT option; some Waaagh! Armies expand DT choices

---
**Reference:** Master tracking issue"

echo "Created: Troops & Dedicated Transports"
sleep 2

# =============================================================
# SUB-ISSUE 7: Fast Attack Units
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Fast Attack Units (p42–51)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork Fast Attack unit entries

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 42–51

### Units to Implement
- [ ] **Ork Warbikers Mob** (p42) — Cavalry (Mob); Warbikes; 3–12 models
- [ ] **Ork Deffkoptas Skwadron** (p43) — Cavalry (Mob); Deffkoptas; 1–5 models; Scout, Hit & Run
- [ ] **Ork Squighog Boyz** (p44) — Cavalry (Mob); Squighog mounts; 3–9 models; Monster Hunter
- [ ] **Ork Warkopta** (p45) — Vehicle (Flyer, Transport, Ramshackle); Transport Capacity 12
- [ ] **Mek Kartz** (p46) — Vehicle (Fast, Open-topped, Ramshackle); 1–3 squadron; custom weapons
- [ ] **Ork Gun Trukks** (p47) — Vehicle (Fast, Open-topped, Ramshackle); 1–3 squadron; heavy weapon platform
- [ ] **Ork Dakkajet** (p48) — Vehicle (Flyer, Ramshackle); Supa-Shootas; More Dakka
- [ ] **Ork Blitza-Bommer** (p49) — Vehicle (Flyer, Ramshackle); Boom Bombs
- [ ] **Ork Burna-Bommer** (p50) — Vehicle (Flyer, Ramshackle); Burna Bombs + Skorcha Missiles
- [ ] **Ork Wazbom Blastajet** (p51) — Vehicle (Flyer, Ramshackle); Smasha Gun + KFF

### Implementation Notes
- 4 different Flyer units (Warkopta, Dakkajet, Blitza-Bommer, Burna-Bommer, Wazbom)
- Warkopta doubles as Flyer Transport
- Mek Kartz and Gun Trukks are vehicle squadrons
- Squighog Boyz interact with Stampedin' Waaagh! and Beast Snaggin' Waaagh!

---
**Reference:** Master tracking issue"

echo "Created: Fast Attack Units"
sleep 2

# =============================================================
# SUB-ISSUE 8: Heavy Support – Infantry, Walkers & Beasts
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Heavy Support — Infantry, Walkers & Beasts (p53–57)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork Heavy Support entries (Infantry, Walkers & Beasts)

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 53–57

### Units to Implement
- [ ] **Ork Lootas Mob** (p53) — Infantry (Mob); Deffgunz; 5–15 models; More Dakka
- [ ] **Ork Mega-Dread** (p54) — Dreadnought (Ramshackle); AV 13/12/10; multiple DCCW + ranged options
- [ ] **Squiggoth** (p55) — Monstrous Creature (Mob, Ramshackle); Transport Capacity; Howdah with Firing Deck
- [ ] **Ork Hunta Rig** (p56) — Vehicle (Super-Heavy, Ramshackle, Transport); Howdah; Weirdboy powers
- [ ] **Ork Kill Rig** (p57) — Vehicle (Super-Heavy, Ramshackle, Transport); Howdah; more dakka variant

### Implementation Notes
- Lootas are the Compulsory Troops for Looted Waaagh!
- Mega-Dread is a heavier Dreadnought variant (larger than Deff Dread)
- Squiggoth is a Monstrous Creature with Transport capability (Howdah)
- Hunta Rig and Kill Rig are Super-Heavy vehicles with Transport (Howdah) and different weapon loadouts
- Squiggoth interacts with Stampedin' Waaagh! (DT option, +2 Movement turn 1)

---
**Reference:** Master tracking issue"

echo "Created: Heavy Support — Infantry, Walkers & Beasts"
sleep 2

# =============================================================
# SUB-ISSUE 9: Heavy Support – Vehicles
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Heavy Support — Vehicles (p58–65)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork Heavy Support entries (Vehicles)

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 58–65

### Units to Implement
- [ ] **Ork Battlewagons** (p58) — Vehicle (Super-Heavy, Open-topped, Ramshackle, Transport 22); extensive weapon options
- [ ] **Ork Gunwagon** (p59) — Vehicle (Ramshackle, Transport 12); turret + hull weapons
- [ ] **Ork Killwagons** (p60) — Vehicle (Super-Heavy, Ramshackle); 1–3 squadron; heavy weapons platform
- [ ] **Ork Big Trakks** (p61) — Vehicle (Ramshackle, Transport 16); 1–3 squadron
- [ ] **Looted Wagon** (p62) — Vehicle (Ramshackle); 1–3 squadron; Rolling Scrap Pile
- [ ] **Grot Tanks Skwadron** (p64) — Vehicle (Ramshackle); 3–5 squadron; BS3
- [ ] **Grot Mega-Tank Skwadron** (p65) — Vehicle (Ramshackle); 1–3 squadron; BS3

### Implementation Notes
- Battlewagons are the primary heavy transport (Transport 22; Mek Waaagh! DT)
- Gunwagon and Big Trakks also serve as DT options in Mek Waaagh!
- Killwagons double as LoW in some Waaagh! Armies
- Looted Wagons interact with Looted Waaagh! (Troops with Line) and Wreckin' Waaagh! (DT for ≤8 models)
- Grot Tanks and Grot Mega-Tanks have BS3 (better than standard Ork BS2)

---
**Reference:** Master tracking issue"

echo "Created: Heavy Support — Vehicles"
sleep 2

# =============================================================
# SUB-ISSUE 10: Heavy Support – Aircraft & Artillery
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Heavy Support — Aircraft & Artillery (p66–70)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork Heavy Support entries (Aircraft & Artillery)

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 66–70

### Units to Implement
- [ ] **Ork 'Eavy Bommer** (p66) — Vehicle (Flyer, Lumbering, Ramshackle); Bombs + turrets; Ramshackle Colossus; Apocalypse Now
- [ ] **Ork Storm Droppa** (p67) — Vehicle (Flyer, Ramshackle); troop deployment aircraft; Ramshackle Colossus
- [ ] **Ork Grot Bommer** (p68) — Vehicle (Flyer, Ramshackle); expendable bomber; Ramshackle Colossus
- [ ] **Mek Gunz** (p69) — Artillery (Emplacement); Grot Krew; 1–3 battery; various gun options
- [ ] **Big Mek Gunz** (p70) — Artillery (Emplacement); Grot Krew; 1–3 battery; larger gun options

### Implementation Notes
- 'Eavy Bommer, Storm Droppa, and Grot Bommer all gained Lumbering sub-type and Ramshackle Colossus in v2.1
- Mek Gunz and Big Mek Gunz use the Emplacement sub-type (immobile artillery with AV)
- Grot Krew models are associated with each gun (separate profiles on 25mm bases)
- Air Waaagh! may affect these Flyer entries

---
**Reference:** Master tracking issue"

echo "Created: Heavy Support — Aircraft & Artillery"
sleep 2

# =============================================================
# SUB-ISSUE 11: Lords of War
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Lords of War (p72–84)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork Lords of War unit entries

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 72–84

### Units to Implement
- [ ] **Gargantuan Squiggoth** (p72) — Gargantuan Creature; Transport (Howdah); massive beast
- [ ] **Ork Kill Krusha Tank Skwadron** (p73) — Vehicle (Super-Heavy, Ramshackle); 1–3 squadron; Krusha Kannon
- [ ] **Ork Kill Bursta Tank Skwadron** (p74) — Vehicle (Super-Heavy, Ramshackle); 1–3 squadron; Bursta Kannon
- [ ] **Ork Kill Blasta Tank Skwadron** (p75) — Vehicle (Super-Heavy, Ramshackle); 1–3 squadron; Blasta Kannon
- [ ] **Ork Kustom Battle Fortress** (p76) — Vehicle (Super-Heavy, Ramshackle, Transport); Ramshackle Colossus; highly customizable
- [ ] **Ork Gorkanaut** (p77) — Vehicle (Super-Heavy, Ramshackle, Transport 3); Deffstorm mega-shoota + DCCW
- [ ] **Ork Morkanaut** (p78) — Vehicle (Super-Heavy, Ramshackle, Transport 3); Kustom Mega-Zappa + KFF
- [ ] **Ork Waaagh! Mega Bommer** (p79) — Vehicle (Flyer, Super-Heavy, Ramshackle); HP20; Ramshackle Colossus; Apocalypse Now; 1000 pts
- [ ] **Ork Stompa** (p80) — Vehicle (Knight/Titan, Ramshackle); Titan-class walker; multiple weapon systems
- [ ] **Ork Gargant** (p82) — Vehicle (Knight/Titan, Ramshackle); larger Titan; Void Shields
- [ ] **Ork Great Gargant** (p83) — Vehicle (Knight/Titan, Ramshackle); even larger Titan
- [ ] **Ork Mega-Gargant** (p84) — Vehicle (Knight/Titan, Ramshackle); largest Titan-class

### Implementation Notes
- Kill Krusha/Bursta/Blasta are variants of the same chassis with different main weapons
- Gorkanaut and Morkanaut can be DT for Meganobz ≤3 in Da 'Ardest Waaagh!
- Stompa and Gargants are Titan-class with multiple weapon systems and Void Shields
- Waaagh! Mega Bommer is an exceptionally expensive (1000 pts) super-heavy flyer with HP20
- Mek Waaagh! allows one LoW choice as Heavy Support

---
**Reference:** Master tracking issue"

echo "Created: Lords of War"
sleep 2

# =============================================================
# SUB-ISSUE 12: Fortifications
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Fortifications (p87–90)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork Fortification entries

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 87–90

### Units to Implement
- [ ] **Big Waaagh! Banner** (p87) — Fortification; morale/leadership buff for nearby Ork units
- [ ] **Gargant 'Ead Bunka** (p88) — Fortification (Emplacement); weapon platform built from Gargant head
- [ ] **Kustom Workshop** (p89) — Fortification; provides repair/upgrade capabilities in battle
- [ ] **Mek Supa-Gunz** (p90) — Fortification (Emplacement); heavy artillery emplacement; moved from HS in v2.1

### Implementation Notes
- Mek Supa-Gunz were moved from Heavy Support to Fortifications in v2.1
- Big Waaagh! Banner is a morale-boosting terrain piece
- Kustom Workshop provides in-game repair/upgrade mechanics
- All use the Emplacement sub-type where applicable (no bases)

---
**Reference:** Master tracking issue"

echo "Created: Fortifications"
sleep 2

# =============================================================
# SUB-ISSUE 13: Weapon Profiles (Ranged & Melee)
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Weapon Profiles — Ranged & Melee (p109–117)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork weapon profiles as sharedProfiles

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 109–117

### Ranged Weapon Profiles (p109–114)
- [ ] Slugga, Shoota, Dakka-Shoota, Shotgun
- [ ] Big Shoota, Twin-Linked Big Shoota, Deffgun
- [ ] Rokkit Launcha, Twin-Linked Rokkit Launcha
- [ ] Kustom Mega-Slugga, Kustom Mega-Blasta, Kustom Mega-Zappa
- [ ] Shokk Blasta, Shokk Attack Gun, Tellyport Blasta
- [ ] Snazzgun, Twin-Linked Snazzgun
- [ ] Waaagh! Blasta, Waaagh! Busta
- [ ] Burna (Shooting), Skorcha, Mega-Skorcha
- [ ] Kombi-Weapons (Mini/Mega variants: Rokkit, Burna, Skorcha)
- [ ] Stikkbomms, Tankbusta Bombs, Tankhammer
- [ ] Dakkagun, Supa-Shoota, Twin-Linked Supa-Shoota
- [ ] Deffkopta Rokkit Launcha, Kustom Deffkopta Mega-Blasta
- [ ] All vehicle weapons (Zzap Gun, Lobba, Kannon, Killkannon, etc.)
- [ ] All aircraft weapons (Boom Bomb, Burna Bomb, Skorcha Missile, etc.)
- [ ] All Titan/Super-Heavy weapons (Belly Gun, Deffstorm Mega-Shoota, Krusha Kannon, etc.)
- [ ] Syrinj' Flinga, Grot Blasta, and other specialist weapons

### Melee Weapon Profiles (p115–117)
- [ ] Choppa, Big Choppa, 'Uge Choppa
- [ ] Power Klaw, Mega-Klaw, Killsaw
- [ ] Power Stabba, Kustom Killchoppa
- [ ] 'Urty Bitz, Medi-Klaw
- [ ] Grot Prod, Grabba Stikk, Squig Jaws
- [ ] Wreckin' Ball, Deffrolla, Spiked Ram
- [ ] All Dreadnought close-combat weapons
- [ ] All Titan/Gargant melee weapons

### Implementation Notes
- Weapon profiles should be implemented as sharedProfiles in the catalog
- Many weapons have unique Ork special rules (More Dakka, Hammering, etc.)
- Kombi-weapons have both a Shooting profile and a one-shot profile
- Some weapons (Da Vulcha's Klaws, Mork's Teeth, etc.) are unique to named characters and may be inline

---
**Reference:** Master tracking issue"

echo "Created: Weapon Profiles"
sleep 2

# =============================================================
# SUB-ISSUE 14: Wargear & Psychic Disciplines
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Wargear & Psychic Disciplines (p118–124)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork wargear items and psychic disciplines

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 118–124

### Ork Wargear (p118–122)
- [ ] **Armour:** 'Eavy Armour, Mega-Armour
- [ ] **Equipment:** Shiny Gubbinz, Bosspole, Gitfinda, Attack Squig, Ammo Runt, Distraction Grot, Grot Orderly
- [ ] **Cybork Body** — FNP (6+) vs Shooting only; no Reactions
- [ ] **Mounts:** Warbike, Rokkit Pack, Squigosaur, Squighog, Smasha Squig, Deffkopta
- [ ] **Dok Tools** — Painboy healing equipment
- [ ] **Mek Tools** — vehicle repair equipment
- [ ] **Waaagh! Banner** — unit-level morale banner
- [ ] **Kustom Force Field (KFF)** — invulnerable save aura
- [ ] **Tellyport Beacon** — Deep Strike accuracy improvement
- [ ] **Bomb Squig** — one-use attack
- [ ] **Grot Bombs** — one-use aircraft weapon
- [ ] And all other wargear from p118–122

### Psychic Disciplines (p123–124)
- [ ] **Psychic Discipline: Waaagh!** (for Weirdboys/Weirdbosses)
  - Da Jump (teleport unit anywhere on battlefield)
  - Da Krunch (24\" S=2D6 AP4 Large Blast Barrage, Godly Pummel chain mechanic)
- [ ] **Psychic Discipline: Beasthead** (for Wildboss Weirdboss variant)
  - Beastscent (remove cover/Evade/Shrouded from enemy; +1 WS/BS on pass)
  - Power Vomit (Template S7 AP2 Pinning, Shell Shock 1)

### Implementation Notes
- Wargear should be implemented as sharedSelectionEntries
- Psychic Disciplines follow the same pattern as core disciplines in the .gst file
- Many wargear items modify Unit Type (mounts) or grant special rules
- Kustom Force Field has an aura effect that may need special handling

---
**Reference:** Master tracking issue"

echo "Created: Wargear & Psychic Disciplines"
sleep 2

# =============================================================
# SUB-ISSUE 15: Dramatis Personae (Named Characters)
# =============================================================
gh issue create --repo "$REPO" \
  --title "Orks: Dramatis Personae — Named Characters (p125–136)" \
  --label "Orks" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Implement Ork Dramatis Personae (named characters)

**Source:** Xenologica 2e – Waaaaagh! The Orks!, pages 125–136

### Named Characters to Implement
- [ ] **Boss Zagstruk 'Da Vulcha'** (170 pts, p126) — HQ; Infantry (Mob, Character, Heavy, Unique); Rokkit Pack; Da Vulcha's Klaws (S8 AP2 Hammering 2); unique Warlord Trait: Who's Da Boss!?; Boots First, Boyz!
- [ ] **Kaptin Badrukk** (180 pts, p127) — HQ; Infantry (Mob, Character, Heavy, Unique); Da Rippa (unique Snazzgun); Flash Git leader
- [ ] **Boss Snikrot** (p128) — HQ; Infantry (Mob, Character, Skirmish, Unique); Shrouded (4+); Mork's Teeth (unique paired weapons); unique Warlord Trait: The Throat Slitter
- [ ] **'Mad Dok' Grotsnik** (p129) — HQ; Infantry (Mob, Character, Unique); Dok Tools + cybork upgrades; One Scalpel Short special rule
- [ ] **Zhadsnark da Rippa** (p130) — HQ; Cavalry (Mob, Character, Unique); custom Warbike; Speed Waaagh! synergy
- [ ] **Mozrog Skragbad** (p131) — HQ; Cavalry (Mob, Character, Unique); Squigosaur mount; beast synergy
- [ ] **Mekboss Buzzgob** (p132) — HQ; Infantry (Mob, Character, Unique); Big Mek variant; Nitnuckle & Lunk (grot assistants)
- [ ] **Zodgrod Wortsnagga** (p133) — HQ; Infantry (Mob, Character, Unique); Runtherd; buffs Gretchin
- [ ] **Ghazghkull Mag Uruk Thraka** (p134–135) — **Prime-Ork**; counts as Primarch; Da Prophet of da Waaagh!; Makari companion; Da 'Ardest Waaagh! synergy
- [ ] **Makari, Bana Wava** (p136) — Companion to Ghazghkull; Waaagh! Banner bearer

### Implementation Notes
- Each named character has the Unique sub-type and custom Warlord Traits
- Most have unique weapon profiles (inline, not shared)
- Ghazghkull is a **Prime-Ork** (counts as Primarch) — largest, most complex entry
- Makari is a companion model to Ghazghkull, not an independent choice
- Snikrot was updated in v2.2: Shrouded (4+), Mork's Teeth Breaching (5+)/Murderous Strike (5+), The Throat Slitter Fear (2)
- Characters may interact with specific Waaagh! Armies (Ghazghkull → Da 'Ardest, Zhadsnark → Speed, etc.)

---
**Reference:** Master tracking issue"

echo "Created: Dramatis Personae"
sleep 2

echo ""
echo "============================================="
echo "All 16 issues created (1 master + 15 sub-issues)"
echo "============================================="
echo ""
echo "Next steps:"
echo "1. Note down the issue numbers from the output above"
echo "2. Update the master tracking issue with sub-issue numbers"
echo "3. Update ORKS_PROGRESS.md with issue numbers"
