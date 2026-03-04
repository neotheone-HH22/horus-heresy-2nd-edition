#!/bin/bash
# =============================================================
# Create all 28 Panoptica tracking issues for
# neotheone-HH22/horus-heresy-2nd-edition
# =============================================================
# Prerequisites: Install GitHub CLI (gh) and authenticate:
#   brew install gh   (or see https://cli.github.com/)
#   gh auth login
# =============================================================

REPO="neotheone-HH22/horus-heresy-2nd-edition"

# =============================================================
# MASTER TRACKING ISSUE
# =============================================================
gh issue create --repo "$REPO" \
  --title "Tracking: Apply Panoptica numerical and structural changes to all catalog files" \
  --label "tracking" --label "Panoptica update" \
  --assignee neotheone-HH22 \
  --body "## Liber Panoptica Master Tracking Issue

This issue tracks all numerical and structural changes to the BattleScribe catalog files for Horus Heresy 2nd Edition as specified in the Liber Panoptica update.

---

### Scope
- Points cost and stat characteristic changes for units, weapons, upgrades
- Weapon profile updates (Range, Strength, AP, Type)
- Unit type/sub-type modifications
- Addition/removal of special rule name references
- Dedicated Transport/option changes
- Cohort/Rite of War structural changes
- Named character stat changes

### Sub-Issues Checklist
_Update with issue numbers once all sub-issues are created_

- [ ] Core Game File (\`2022 - Horus Heresy.gst\`)
- [ ] Legiones Astartes Shared (\`2022 - Legiones Astartes.cat\`)
- [ ] Dark Angels
- [ ] White Scars
- [ ] Space Wolves
- [ ] Imperial Fists
- [ ] Blood Angels
- [ ] Iron Hands
- [ ] World Eaters
- [ ] Ultramarines
- [ ] Night Lords
- [ ] Emperor's Children
- [ ] Iron Warriors
- [ ] Thousand Sons
- [ ] Sons of Horus
- [ ] Word Bearers
- [ ] Salamanders
- [ ] Raven Guard
- [ ] Alpha Legion
- [ ] Mechanicum
- [ ] Questoris Knights & Titan Legions
- [ ] Custodes & Sisters of Silence
- [ ] Solar Auxilia
- [ ] Assassins
- [ ] Imperialis Militia
- [ ] Daemons of the Ruinstorm
- [ ] Legacies & Exemplary Battles

---

### Action Plan
- Each change should be made as a separate PR targeting the relevant catalog file
- This issue will be checked off as changes are applied and PRs merged
- Reference this issue in all related PRs

### If you contribute
- Please reference this issue in your PR
- Provide unit/weapon before/after snippets where possible
- Ensure BattleScribe validation passes after file updates"

echo "Created: Master Tracking Issue"
sleep 2

# =============================================================
# SUB-ISSUE 1: Core Game File
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Core Game File (2022 - Horus Heresy.gst)" \
  --label "Panoptica update" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - Horus Heresy.gst\`

### Unit Type / Sub-type Changes
- [ ] Cavalry: Count as models equal to starting Wounds for Rampage etc.
- [ ] Dreadnought: Same as Cavalry; re-roll failed To Wound by Ordnance/Sunder
- [ ] Automata: Same as Cavalry; re-roll failed To Wound by Ordnance/Sunder
- [ ] Antigrav: Dangerous Terrain test if starting/ending in Difficult/Dangerous
- [ ] Knights & Titans: Add Hammer of Wrath (3); +2 Attacks for two melee weapons
- [ ] Flyers: Add Countermeasures special rule
- [ ] Lumbering: May fire all weapons with no penalties
- [ ] Primarch: Precision Strikes/Shots (2+); may ignore Heroic Stand
- [ ] Daemon: Corrupted Sub-type may join Daemon units
- [ ] Characters: Wound allocation capped by unmodified Initiative

### Special Rule Changes
- [ ] Concussive (X): Leadership test; WS penalty on fail
- [ ] Blind: Initiative test; WS/BS 1 on fail
- [ ] Hit & Run: 2D6 + Initiative (not Movement)
- [ ] Monster Hunter: Also re-rolls vs Dreadnoughts, Automata, Primarchs
- [ ] Master-Crafted Blast/Template: Treated as Twin-Linked
- [ ] Guided Fire: No Cover Save from terrain/models
- [ ] Night Vision: Also prevents Shrouded rolls
- [ ] Shock Pulse: Super-Heavy/Knight/Titan get -2 BS, re-roll Hit on Scatter
- [ ] Slow Vehicles: Cruising Speed fires Snap Shots only
- [ ] Night Fighting: 4+ to activate (not 2+)

### Weapon Profile Updates (Panoptica profiles)
- [ ] Avenger Gatling Cannon: 36\" S6 AP4 Heavy 12, Rending (5+)
- [ ] Baneblade Cannon: 72\" S9 AP3 Ordnance 1, Massive Blast (7\"), Pinning, Rending (6+)
- [ ] Battle Cannon: 48\" S8 AP4 Heavy 1, Large Blast (5\"), Rupture (4+), Breaching (6+), Pinning
- [ ] Exterminator Autocannon: 48\" S7 AP4 Heavy 6, Rending (5+), Twin-Linked
- [ ] Fellblade Accelerator Cannon (AE & HE shells)
- [ ] Hellhammer Cannon: 36\" S12 AP3 Ordnance 1, Large Blast (5\"), Sunder, Rending (4+), Brutal (3), Wrecker
- [ ] Kratos Battlecannon (HE/AP/Flashburn)
- [ ] Demolisher Cannon: 24\" S12 AP3 Ordnance 1, Blast (3\"), Sunder, Rending (5+), Brutal (3), Wrecker
- [ ] Dreadhammer Siege Cannon: 24\" S12 AP3 Ordnance 1, Large Blast (5\"), Sunder, Rending (4+), Brutal (4), Wrecker
- [ ] Earthshaker Cannon/Battery, Medusa Mortar, Morbus Bombard, Mars-Colossus Bombard
- [ ] Praetor Launcher (Firestorm & Foehammer)
- [ ] All Volkite weapons (Carronade, Chieorovile, Macro-Saker, Veuglaire)
- [ ] All Missile weapons (Aiolos, Spicula, Terrebrax, Whirlwind Talonis HE, Aethon)
- [ ] All Melta/Las/Grav/Flame/Plasma/Bolt/Grenade weapons per Panoptica
- [ ] All Melee weapons (Gravis Power Fist, Reaper Chain weapons, Shock Charger, Thunderstrike Gauntlet, Power Blade Array, Krak Grenades etc.)
- [ ] Exotic weapons (Animus Blast, Exitus Rifle, Lidless Stare)

### Other
- [ ] Deep Strike Assault: Disordered on 1; deploy within 24\"
- [ ] Blood Feud: Additional VP targets (Armiger, Knights/Titans, Super-Heavy/Lumbering)
- [ ] Psychic Powers: Telekine Dome, Telepathic Hallucinations, Thaumaturgic Succour updates

---
**Reference:** Master tracking issue"

echo "Created: Core Game File"
sleep 2

# =============================================================
# SUB-ISSUE 2: Legiones Astartes Shared
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Legiones Astartes Shared (2022 - Legiones Astartes.cat)" \
  --label "Panoptica update" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - Legiones Astartes.cat\`

### Points Cost Changes
- [ ] Contemptor Dreadnought Talon: base 200 pts, +200 per additional
- [ ] Contemptor Gravis Melta Cannon: +15 pts
- [ ] Contemptor Kheres Assault Cannon: +5 pts
- [ ] Heavy Support Squad: Lascannons +15 pts, Volkite Culverins +10 pts, Multi-Melta includes Suspensor Web
- [ ] Xiphon Interceptor: base 145 pts
- [ ] Scorpius Squadron: base 175 pts, +160 per additional
- [ ] Glaive: base 575 pts
- [ ] Fellblade: base 600 pts
- [ ] Falchion: base 625 pts

### Unit/Sub-type Changes
- [ ] Tactical Support Squad: Add Line Sub-type
- [ ] Arquitor Squadron: Front Armour 13, add Reinforced Sub-type
- [ ] Deathstorm Drop Pod: BS 4
- [ ] Sicaran Venator: Add Bombard Sub-type
- [ ] Dreadclaw Drop Pod: Add Assault Vehicle
- [ ] Storm Eagle: Hull Multi-Melta to Hull Gravis Melta Cannon
- [ ] Mastodon: Add Hull (Front) Magna-Melta Array, add Reinforced Shell
- [ ] Leviathan Dreadnought: Note bonus attack already included
- [ ] Whirlwind: Add Bombard Sub-type

### Wargear / Equipment
- [ ] Scout Armour: Add Light Sub-type
- [ ] Scimitar Jetbike & Spatha Combat Bike: Add Battle-Hardened (1), Skilled Rider; Wounds 2
- [ ] Teleport Strike: Also available to Sons of Horus and Night Lords
- [ ] Geo-Locator Beacon: Re-roll all failed Reserves rolls
- [ ] Paired Lightning Claws: +2A only when attacking with them
- [ ] Suspensor Web: Armourbane (Melta) range on original range
- [ ] Auxiliary Vehicle Bay: Flyer/Movement 0 cannot embark

### Rites of War
- [ ] Angel's Wrath: Storm Eagle available if exceeds Rhino capacity
- [ ] Drop Pod Assault: Counts as Deep Strike for Orbital Assault Vehicle
- [ ] Armoured Spearhead: Single Sicaran/Predator/Kratos as HQ; Predator Compulsory gain Line
- [ ] Brethren of Iron: Automata gain Legiones Astartes (X) matching Warlord
- [ ] Fury of the Ancients: Dreadnought Line units +1 VP when destroyed
- [ ] Recon Company: Scouts gain Line; re-roll first turn/Seize
- [ ] Pride of the Legion: Veterans as Troops gain Line

### Other
- [ ] Rocket Barrage: Rending (5+) instead of (4+)
- [ ] Dreadnought Talon: Separated models count as own unit for VP
- [ ] Void Shields FAQ: All shots strike shields; no Flare Shield benefit
- [ ] Combat Air Patrol: Resolved in Movement Phase (no Skyfire)

---
**Reference:** Master tracking issue"

echo "Created: Legiones Astartes Shared"
sleep 2

# =============================================================
# SUB-ISSUE 3: Dark Angels
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Dark Angels (2022 - LA - Dark Angels.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Dark Angels.cat\`

### Points/Stat Changes
- [ ] Dreadwing Interemptor Squad: base 150 pts, +25 pts per model
- [ ] Inner Circle Knights Cenobium: Cenobite Infantry (Heavy); Preceptor Infantry (Character, Heavy); add Chosen Warriors; Thunder Hammer +5 pts/model
- [ ] Dark Angels Inductii Template: Volkite charger exchange costs +25 pts for unit

### Rite of War Changes
- [ ] Eskaton Imperative: +1 To Wound vs units with half+ models in Dangerous Terrain
- [ ] Serpent's Bane: Select 3 Priority Targets (Primarch/HQ/Elites/LoW); +1 To Hit vs them
- [ ] Storm of War: Centurions don't prevent Apothecaries/Techmarines joining; no Company Command Squad
- [ ] Unbroken Vow: Cataphractii & Tartaros Compulsory Troops gain Line

### Exemplary Battles
- [ ] Inner Circle Knights - Order of the Broken Claws: Infantry (Heavy); add Chosen Warriors; Thunder Hammer +5 pts/model

---
**Search tips:** Search for Interemptor, Cenobium, Eskaton, Serpent, Storm of War, Unbroken Vow
**Reference:** Master tracking issue"

echo "Created: Dark Angels"
sleep 2

# =============================================================
# SUB-ISSUE 4: White Scars
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: White Scars (2022 - LA - White Scars.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - White Scars.cat\`

### Special Rule / Unit Changes
- [ ] Swift of Action: +1 Movement; roll extra dice for first turn/Seize (discard lowest)
- [ ] Jaghatai Khan: Add Outflank; counts as having Legion Scimitar Jetbike on Voidbike
- [ ] Sojutsu Pattern Voidbike: Cannot benefit from Narthecium
- [ ] Legion Shamshir Jetbike: Movement 19\"; add Firing Protocols (2), Battle-Hardened (1), Skilled Rider, Hammer of Wrath (1); Armour Save 2+
- [ ] Golden Keshig: Remove Heavy Sub-type
- [ ] Ebon Keshig: Add Dedicated Transport (Land Raider Proteus <=5 models, Spartan any size)
- [ ] Ungainly: Works on successful Charge (even Disordered); no bonus attacks

### Exemplary Battles
- [ ] Dark Sons of Death: Dark Son Attacks 2; Death's Champion Attacks 3

---
**Search tips:** Search for Swift of Action, Jaghatai, Shamshir, Golden Keshig, Ebon Keshig, Ungainly
**Reference:** Master tracking issue"

echo "Created: White Scars"
sleep 2

# =============================================================
# SUB-ISSUE 5: Space Wolves
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Space Wolves (2022 - LA - Space Wolves.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Space Wolves.cat\`

### Wargear / Weapon Changes
- [ ] Frost Blades: Free for IC to exchange Power Weapon for Frost Sword/Axe/Claw; Great Frost Blade +5 pts
- [ ] Frost Claw: Two Frost Claws give +2 Attacks instead of +1

### Special Rule Changes
- [ ] Winds of Fenris Stormwrought: Failed check gives Shrouded (5+); passed gives Shrouded (3+)

### Exemplary Battles
- [ ] Jorlund Hunter Pack: Add Skirmish Sub-type; add Hit & Run

---
**Search tips:** Search for Frost Blade, Frost Claw, Stormwrought, Jorlund
**Reference:** Master tracking issue"

echo "Created: Space Wolves"
sleep 2

# =============================================================
# SUB-ISSUE 6: Imperial Fists
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Imperial Fists (2022 - LA - Imperial Fists.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Imperial Fists.cat\`

### Named Character Changes
- [ ] Sigismund: Remove Eternal Warrior; add Emperor's Chosen

### Wargear Changes
- [ ] Vigil Storm Shield: IC +15 pts; Terminator exchange Combi-Bolter +10 pts; 5+ Invuln or +1 step (max 3+)
- [ ] Iliastus Assault Cannon: Available to Blood Angels AND Imperial Fists; Infantry/Cavalry +10 pts; Dreadnought/Vehicle +20 pts

### Unit Changes
- [ ] Tyrant Siege Terminators Omni-Scope: Add Night Vision; Interceptor Reaction doesn't cost Reaction Allotment

### Rite of War Changes
- [ ] Stone Gauntlet: Re-roll failed Invuln saves of 1 (Boarding Shield + 2 others); Compulsory Troops = Phalanx Warders OR Breachers

### Siege of Cthonia
- [ ] Warlord: Butcher of Larissan (Garrius): VP reduction minimum 1; additional Assault Reaction
- [ ] Tyrant's Regalia: Unit with Garrius may not make Sweeping Advances
- [ ] Vheren Ashurhaddon: Add Outflank

### Exemplary Battles
- [ ] Huscarl Squad: Transport (Proteus/Dreadclaw <=5, Spartan any size)

---
**Search tips:** Search for Sigismund, Vigil Storm Shield, Iliastus, Tyrant Siege, Stone Gauntlet, Huscarl, Garrius, Ashurhaddon
**Reference:** Master tracking issue"

echo "Created: Imperial Fists"
sleep 2

# =============================================================
# SUB-ISSUE 7: Blood Angels
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Blood Angels (2022 - LA - Blood Angels.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Blood Angels.cat\`

### Special Rule Changes
- [ ] Blood Angels Advanced Reaction: Infantry or Cavalry Unit Type only

### Points/Stat Changes
- [ ] Dawnbreaker Cohort: base 185 pts, +30 pts per model

### Named Character Changes
- [ ] Sanguinius: Counts as having a Legion Warhawk Jump Pack

### Siege of Cthonia
- [ ] Blood Angels Inductii Template: Replace Spite of the Legion with The Revenant Legion and Rage (2)

---
**Search tips:** Search for Advanced Reaction, Dawnbreaker, Sanguinius, Inductii
**Reference:** Master tracking issue"

echo "Created: Blood Angels"
sleep 2

# =============================================================
# SUB-ISSUE 8: Iron Hands
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Iron Hands (2022 - LA - Iron Hands.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Iron Hands.cat\`

### Unit Changes
- [ ] Gorgon Terminator Squad: Remove Feel No Pain (5+); add Augmetics (5+)
- [ ] Medusan Immortals: Add Relentless; Dedicated Transport = Termite or Land Raider Proteus (<=10 models)

### Wargear Changes
- [ ] Gorgon Terminator Armour: +10 pts (not free); Augmetics (5+); Blind triggers on passed saves

### Weapon Changes
- [ ] Forgebreaker: S12 AP1 Melee, Master-Crafted, Exoshock (3+), Brutal (3), Two-Handed

### Rite of War
- [ ] Logos Lectora: Two Compulsory HQ + one non-Compulsory (not four total)

---
**Search tips:** Search for Gorgon Terminator, Medusan Immortal, Forgebreaker, Logos Lectora
**Reference:** Master tracking issue"

echo "Created: Iron Hands"
sleep 2

# =============================================================
# SUB-ISSUE 9: World Eaters
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: World Eaters (2022 - LA - World Eaters.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - World Eaters.cat\`

### Special Rule Changes
- [ ] Violence Incarnate: +1 Attack on successful Charge (per model, not per unit)
- [ ] World Eaters Advanced Reaction: Infantry or Cavalry only
- [ ] Ravening Madmen: Attackers reduce Strength by -1 for To Wound (not for Instant Death)

### Rite of War Changes
- [ ] Berserker Assault: Must Charge if enemy within 12\" and LoS; cannot initiate Multiple Combat

### Named Character Changes
- [ ] Red Sands (Angron): May make as many Challenges as there are enemy Characters/Primarchs in combat

### Weapon Changes
- [ ] Excoriator Chainaxe: +2S AP3 Two-Handed, Shred, Murderous Strike (5+), Unwieldy, Breaching (5+)
- [ ] Falax Blades: +1S AP5 Specialist Weapon, Breaching (5+), Duellist's Edge (1)

### Exemplary Battles
- [ ] Red Hand Destroyer Squad: Meteor Hammer +10, Excoriator +10, Twin Falax +5, Barb-Hook Lash +5

---
**Search tips:** Search for Violence Incarnate, Berserker Assault, Ravening Madmen, Red Sands, Angron, Red Hand
**Reference:** Master tracking issue"

echo "Created: World Eaters"
sleep 2

# =============================================================
# SUB-ISSUE 10: Ultramarines
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Ultramarines (2022 - LA - Ultramarines.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Ultramarines.cat\`

### Unit Changes
- [ ] Invictus Suzerain Squad: base 200 pts, +35 per model; remove Character/Line Sub-types; add Chosen Warriors; Transport = Termite or Proteus

### Named Character / Legacy Changes
- [ ] Honoured Telemechrus: Grants Vexilla to Ultramarines within 12\"; add Character Sub-type

### Exemplary Battles
- [ ] Nemesis Destroyer Squad: Mortifier Bolter 18\" S4 AP5 Assault 2, Harrower, Breaching (6+)
- [ ] Fulmentarus Terminator Squad: Hellfire Plasma Missile 36\" S7 AP4 Heavy 2, Breaching (4+)

---
**Search tips:** Search for Invictus Suzerain, Telemechrus, Nemesis Destroyer, Fulmentarus
**Reference:** Master tracking issue"

echo "Created: Ultramarines"
sleep 2

# =============================================================
# SUB-ISSUE 11: Night Lords
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Night Lords (2022 - LA - Night Lords.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Night Lords.cat\`

### Points/Stat Changes
- [ ] Terror Squad: base 135 pts, +22 per model; Executioner/Headsman Wounds = 2
- [ ] Night Raptor Squad: base 150 pts
- [ ] Contekar Terminator Squad: base 250 pts, +45 per model

### Wargear Changes
- [ ] Nostraman Chain Weapons: Free for Characters to exchange Power Weapon for Chainblade or Chainglaive

### Rite of War Changes
- [ ] Terror Assault: Remove 3rd Limitation; Terror Squads as Compulsory Troops gain Line

### Named Character Changes
- [ ] Kheron Ophion: Replace Power Armour with Artificer Armour

### Exemplary Battles
- [ ] Atramentar Squad: WS 5 both profiles; Atramentar Ld 8, Trucidor Ld 9; add Stubborn

---
**Search tips:** Search for Terror Squad, Night Raptor, Contekar, Nostraman, Terror Assault, Kheron Ophion, Atramentar
**Reference:** Master tracking issue"

echo "Created: Night Lords"
sleep 2

# =============================================================
# SUB-ISSUE 12: Emperor's Children
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Emperor's Children (2022 - LA - Emperor's Children.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Emperor's Children.cat\`

### Unit/Sub-type Changes
- [ ] Phoenix Terminator Squad: Phoenix Terminator Infantry; Phoenix Champion Infantry (Character); add Chosen Warriors

### Transport Changes
- [ ] Palatine Blade Squad: Add Termite and Land Raider Proteus Carrier as transport options

### Named Character Changes
- [ ] Captain Saul Tarvitz: Add Shattered Legionary
- [ ] Rylanor The Unyielding: Add IWND (5+), Hatred (Traitors), Shattered Legionary, Character; Vexilla to EC within 12\"

### Exemplary Battles
- [ ] Sun Killer Squad: Multi-Melta includes Suspensor Web
- [ ] Fulgrim Transfigured: WS 9; counts as having Legion Warhawk Jump Pack

---
**Search tips:** Search for Phoenix Terminator, Palatine Blade, Tarvitz, Rylanor, Sun Killer, Fulgrim Transfigured
**Reference:** Master tracking issue"

echo "Created: Emperor's Children"
sleep 2

# =============================================================
# SUB-ISSUE 13: Iron Warriors
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Iron Warriors (2022 - LA - Iron Warriors.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Iron Warriors.cat\`

### Named Character Changes
- [ ] Perturabo: Add Heavy Sub-type; add Nuncio-Vox and Cognis Signum
- [ ] Erasmus Golg: Add Traitor special rule

### Weapon Changes
- [ ] Graviton Crusher: x2S AP2 Melee, Unwieldy, Haywire, Two-Handed

### Unit Changes
- [ ] Iron Havocs Ferrum Occularis: Heavy weapons gain Sunder (not in Reaction/Snap Shot)

### Exemplary Battles
- [ ] Dominator Cohort: base 250 pts, +45 per model; Transport = Proteus/Dreadclaw (<=5) or Spartan (any)

---
**Search tips:** Search for Perturabo, Graviton Crusher, Erasmus Golg, Iron Havocs, Ferrum Occularis, Dominator
**Reference:** Master tracking issue"

echo "Created: Iron Warriors"
sleep 2

# =============================================================
# SUB-ISSUE 14: Thousand Sons
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Thousand Sons (2022 - LA - Thousand Sons.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Thousand Sons.cat\`

### Points/Stat Changes
- [ ] Castellax-Achea Automata: base 100 pts, +95 per model

### Wargear Changes
- [ ] Asphyx Shells: 1 pt per weapon (Bolt Pistol and/or Bolter)
- [ ] Achea Pattern Force Weapons: Remove IC restriction

### Special Rule Changes
- [ ] Achean Force: Dreadnoughts may activate despite not having Psyker Sub-type
- [ ] Psy-Automata Sub-type: May Charge after shooting Rapid-Fire
- [ ] Sire of the Thousand Sons: Psykers gain Adamantium Will (6+) or +1 step; Perils -1 wound (min 1); additional Assault Reaction

### Named Character Changes
- [ ] Magnus the Red: Add Psychic Mastery (3)
- [ ] Ahzek Ahriman: Add Psychic Mastery (2)

### Rite of War Changes
- [ ] Achaean Configuration: Must include Techmarine Covenant OR Numerologist Cabal

---
**Search tips:** Search for Castellax-Achea, Asphyx, Achea Pattern, Achean Force, Psy-Automata, Magnus, Ahriman, Achaean Configuration
**Reference:** Master tracking issue"

echo "Created: Thousand Sons"
sleep 2

# =============================================================
# SUB-ISSUE 15: Sons of Horus
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Sons of Horus (2022 - LA - Sons of Horus.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Sons of Horus.cat\`

### Points/Wargear Changes
- [ ] Reaver Attack Squad: Power Weapons +5 pts; Charnabal Weapons +5 pts; add Outflank
- [ ] Justaerin Terminator Squad: Transport = Proteus (<=5) or Spartan (any)

### Named Character Changes
- [ ] Maloghurst the Twisted: Add Broken Soul
- [ ] Garviel Loken: Add Shattered Legionary
- [ ] Tybalt Marr: Add Shattered Legionary

### Rite of War Changes
- [ ] Black Reaving: Deep Strike/Outflank conferred to Characters joining units

### Legacy Characters
- [ ] Shabran Darr: Add Shattered Legionary
- [ ] Autilon Skorr: Remove Traitor

---
**Search tips:** Search for Reaver Attack, Justaerin, Maloghurst, Garviel Loken, Tybalt Marr, Black Reaving, Shabran Darr, Autilon Skorr
**Reference:** Master tracking issue"

echo "Created: Sons of Horus"
sleep 2

# =============================================================
# SUB-ISSUE 16: Word Bearers
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Word Bearers (2022 - LA - Word Bearers.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Word Bearers.cat\`

### Wargear/Upgrade Changes
- [ ] Dark Channelling: +25 pts per unit; grants Corrupted Sub-type
- [ ] Tainted Weapon: +5 pts each (down from +10)
- [ ] Diabolist: Available to Centurion, Cataphractii Centurion, or Tartaros Centurion

### Special Rule Changes
- [ ] Corrupted Sub-type: Units without Corrupted/Daemon may not join Corrupted units
- [ ] Unswerving Devotion: Auto-pass first failed Morale/Pinning per turn within 6\"; additional Shooting Reaction
- [ ] The Power of the Word (Lorgar): Retinue gains Fearless and Feel No Pain (4+)

### Rite of War Changes
- [ ] The Dark Brethren: Favour points details; max 3 instances; Detachment-only

### Exemplary Battles
- [ ] Word Bearers Procurators: Heavy Chainsword +2 pts; Grim Purpose updated

---
**Search tips:** Search for Dark Channelling, Tainted, Diabolist, Corrupted, Unswerving, Dark Brethren, Procurator, Lorgar
**Reference:** Master tracking issue"

echo "Created: Word Bearers"
sleep 2

# =============================================================
# SUB-ISSUE 17: Salamanders
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Salamanders (2022 - LA - Salamanders.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Salamanders.cat\`

### Rite of War Changes
- [ ] Covenant of Fire: Pyroclasts as Troops gain Line; TSS with Dragon's Breath get Heart of the Legion
- [ ] Awakening Fire: Adherents as Troops lose Support Squad, gain Line

### Wargear/Special Rule Changes
- [ ] Dragon's Breath: All weapons gain Breaching (6+)
- [ ] Mantle of the Elder Drake: +25 pts

### Unit Changes
- [ ] Praetorian Breacher Squad: Transport = Termite or Land Raider Proteus

### Named Character Changes
- [ ] Nomus Rhy'Tan: WS 6; IWND (5+); unit gains Stubborn/Hatred (Everything); Keeper of the Keys +2\" Charge for Dreadnoughts in same detachment
- [ ] Xiaphas Jurr: IWND (5+); unit gains Stubborn/Hatred (Everything); Blackshields Adherents as Elites
- [ ] Cassian Dracos Reborn: Full stat overhaul M6 WS6 BS5 S6 T7 W6 I4 A4 Ld10 Sv2+; Iron Halo, Nuncio Vox, Ferromantic Invulnerability, Cybertheurgist/Character
- [ ] Darkstar Falling: +2S AP2 Melee, Two-Handed, Master-Crafted

### Exemplary Battles
- [ ] Sanctifier Squad: Transport = Rhino/Termite/Proteus; any model may exchange Bolter for Obsidite Rotor Cannon +10 pts

---
**Search tips:** Search for Covenant of Fire, Awakening Fire, Dragon's Breath, Mantle, Praetorian Breacher, Rhy'Tan, Xiaphas Jurr, Cassian Dracos, Darkstar, Sanctifier
**Reference:** Master tracking issue"

echo "Created: Salamanders"
sleep 2

# =============================================================
# SUB-ISSUE 18: Raven Guard
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Raven Guard (2022 - LA - Raven Guard.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Raven Guard.cat\`

### Special Rule Restructure
- [ ] Shadow and Fury — three categories:
  - **Talons** (Infantry, non-Heavy, no Terminator/Jump Pack): Shrouded (6+) at 8\"+; Infiltrate
  - **Falcons** (Dreadnought/Primarch/Heavy/Terminator/Jump Pack): Re-roll To Hit rolls of 1 on Charge
  - **Hawks** (Cavalry/Fast Vehicle/Flyer): Shrouded (6+) on Run/Flat Out/Zoom; improves to (5+) if already has (6+)

### Rite of War Changes
- [ ] Decapitation Strike: Shrouded (5+) lasts until start of Controlling Player's next turn

### Named Character Changes
- [ ] Corvus Corax: Counts as having Legion Warhawk Jump Pack
- [ ] Strike Captain Alvarex Maun: Add Refractor Field

### Weapon Changes
- [ ] Dawnbringer: S10 AP1 Master-Crafted, Two-Handed, Armourbane (Melee), Instant Death, Brutal (2)

### Exemplary Battles
- [ ] Deliverers Squad: Battle-Hardened (1) for both Loyalist and Traitor

---
**Search tips:** Search for Shadow and Fury, Talons, Falcons, Hawks, Decapitation Strike, Corvus Corax, Alvarex Maun, Dawnbringer, Deliverers
**Reference:** Master tracking issue"

echo "Created: Raven Guard"
sleep 2

# =============================================================
# SUB-ISSUE 19: Alpha Legion
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Alpha Legion (2022 - LA - Alpha Legion.cat)" \
  --label "Panoptica update" --label "BattleScribe" --label "Legion" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LA - Alpha Legion.cat\`

### Named Character Changes
- [ ] Alpharius: Add Skirmish Sub-type; add Nuncio-Vox
- [ ] Exodus: Add Skirmish Sub-type

### Points Changes
- [ ] Lernaean Terminator Squad: Power Fists +5 pts; Chainfists +10 pts

### Rite of War Changes
- [ ] Coils of the Hydra: Up to 3 Rewards of Treachery units (same LA variant); change allegiance to match Detachment

### FAQ
- [ ] Everywhere and Nowhere: Retinue unit does not count towards 3-unit limit

---
**Search tips:** Search for Alpharius, Exodus, Lernaean, Coils of the Hydra, Rewards of Treachery, Everywhere and Nowhere
**Reference:** Master tracking issue"

echo "Created: Alpha Legion"
sleep 2

# =============================================================
# SUB-ISSUE 20: Mechanicum
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Mechanicum (2022 - Mechanicum.cat)" \
  --label "Panoptica update" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - Mechanicum.cat\`

### Points/Stat Changes
- [ ] Scyllax Guardian-Automata: base 100 pts; add Feel No Pain (5+)
- [ ] Ursarax Cohort: Strength 5; any model may exchange lightning claws
- [ ] Adsecularis Tech-Thrall Covenant: Armour Save 5+
- [ ] Myrmidon Secutor Host: Graviton Guns +10 pts; Phased Plasma Fusils +15 pts
- [ ] Thanatar Siege-Automata: HoW (3); add Shock Charger (Calix only)
- [ ] Arlatax: Replace Power Blade Arrays with Arlatax Power Claws; Arc Scourge +10 pts
- [ ] Ordinatus Aktaeus: base 700 pts; add Transport Bay
- [ ] Warlord Battle Titan: Void Shields (8)
- [ ] Archmagos Anacharis Scoria: Add Stubborn

### Knight Changes
- [ ] Acastus Knight Asterius: Karacnos Centreline; Conversion Destructors replace Twin-Linked HCBCs
- [ ] Questoris Styrix/Magaera/Atrapos: Add Flare Shield
- [ ] Acastus Porphyrion: Non-twin-linked Magna Lascannons

### Armiger / Knight Structural
- [ ] Armiger: Cannot be destroyed by Infantry Sweeping; auto-pass Pinning; attacks as Dreadnought
- [ ] Paragon: May make Reactions ignoring restrictions
- [ ] Household Ranks: +1 HP most; Seneschal/Conqueror +2 HP
- [ ] Implacable: -1 HP damage (min 1); -1 Vehicle Damage table

### Wargear/Equipment
- [ ] Ionic Deflector: 5+ Invuln; ID causes D3 wounds; explosion D6+3\" S8 AP-
- [ ] Ordinatus Dispersion Shield: Flare Shield after Turn 1
- [ ] Stratos Thrusters: Skyfire option; Deep Strike; move over models
- [ ] Utan Jump Booster: Move over models
- [ ] Incunabulan Jet Pack: Extra move own Shooting Phase only; move over models

### Special Rule Changes
- [ ] Disruption (X): Auto Glancing/Wound on X+
- [ ] Destructor: D6 Wounds/HP; 2D6 vs Knight/Titan/Gargantuan/Super-Heavy/Building/Monstrous
- [ ] God-Engine: Units within 18\" with Kyropatris gain Line
- [ ] Paragon of Metal: Armour Save 2+
- [ ] Pride of Place: Ignore if Transport is Super-Heavy; Bulky (X) = starting Wounds
- [ ] Feudal Hierarchy: One model with this rule per Detachment

### Cybertheurgic Rites
- [ ] Cybernetica Exortus: Extra Charge dice; +1 BS/WS (max 5) until end of turn
- [ ] Ephemera Perfidiae: Target enemy Veh/Dread/Automata within 12\"; shoot at Cybertheurgist BS on pass
- [ ] Ephemera Exocluo: Replace Blind with Sensor Flare
- [ ] Animatus Malevolence: Affects units containing (not composed entirely of) Corrupted

### Weapon Profile Updates
- [ ] All Titan/Knight melee and ranged weapons per Panoptica
- [ ] Scyllax Dismember, Arlatax Power Claw, Shock Charger, Shock Lance, Thunderstrike Gauntlet, Power Blade Array, Graviton Ram, Las-Impulsor, Atrapos Phasecutter, Reaper Chain weapons
- [ ] Volkite Chieorovile, Veuglaire, Terrebrax Rocket Battery, Conversion Destructor
- [ ] Phaeton Autocannon, Rapid-Fire Battle Cannon, Mori/Nemesis Quake Cannon
- [ ] Laser Blaster, Belicosa/Nemesis Volcano Cannon, Vulcan Mega-Bolter, Avenger Gatling Cannon

---
**Search tips:** Search for unit/weapon names in XML; use BattleScribe Data Editor
**Reference:** Master tracking issue"

echo "Created: Mechanicum"
sleep 2

# =============================================================
# SUB-ISSUE 21: Knights & Titan Legions
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Questoris Knights & Titan Legions" \
  --label "Panoptica update" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to Questoris Household and Titan Legions files

### Questoris Household
- [ ] Binaric Stratagems: No benefits without Kyropatris Field Generator
- [ ] Household Ranks: +1 HP most; Seneschal/Conqueror +2 HP
- [ ] Implacable: -1 HP damage (min 1); -1 Vehicle Damage table
- [ ] Paragon: May make Reactions ignoring restrictions
- [ ] Armiger: Cannot be destroyed by Infantry Sweeping; auto-pass Pinning; attacks as Dreadnought
- [ ] Armiger/Moirax Talons: Separated models = own unit for VP
- [ ] Ionic Deflector: 5+ Invuln; ID D3 wounds; explosion D6+3\" S8 AP-
- [ ] All Knight weapon profiles per Panoptica

### Titan Legions
- [ ] Warlord Battle Titan: Void Shields (8)
- [ ] God-Engine: Units within 18\" with Kyropatris gain Line
- [ ] Thanatar Maniple: Separated models = own unit for VP
- [ ] All Titan weapon profiles per Panoptica

---
**Files:** Questoris Household and Titan Legions .cat files
**Reference:** Master tracking issue"

echo "Created: Knights & Titans"
sleep 2

# =============================================================
# SUB-ISSUE 22: Custodes & Sisters of Silence
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Custodes & Sisters of Silence" \
  --label "Panoptica update" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to Custodes and Sisters of Silence files

### Custodes

#### Points/Stat Changes
- [ ] Tribune: Paragon Blade Free; Meridian Swords +35; Paragon Glaive +10
- [ ] Shield Captain: Same as Tribune
- [ ] Hetaeron Guard: 195 pts, +60 per model; default Paragon Blade; Meridian Swords +35
- [ ] Custodian Guard: Attacks 3
- [ ] Sentinel Guard: Attacks 3
- [ ] Agamatus Jetbike: Attacks 2
- [ ] Venetari: 190 pts, +60 per model; Attacks 3
- [ ] Orion Dropship: Transport Capacity 36
- [ ] Caladius: Iliastus Accelerator Cannon Arrays

#### Wargear/Special Rule
- [ ] Golden Exemplar: First Reaction per Turn free
- [ ] Gyrfalcon Jetbike: Add Skilled Rider
- [ ] Erinyes Jetbike: Movement 18\"; Skilled Rider; Battle-Hardened (1)
- [ ] Praesidium Shield: +1 Invuln (max 3+) or 6+ if none
- [ ] Command Vox: Re-roll Scatter with LoS

#### Weapon Profiles
- [ ] Adrathic Destructor/Devastator, Adrasite Spear, Pyrithite Spear
- [ ] Arachnus Storm Cannon, Volkite Macro-Saker, Infernus Firepike
- [ ] Telemon Cestus, Tarsus Buckler, Charonite Claws, Gravis Power Fist
- [ ] Adrastus Bolt Caliver, Grenade Launcher Krak, Krak Grenades

---
### Sisters of Silence

- [ ] Knight Abyssal/Centura: May exchange Execution Blade and/or Bolt Pistol
- [ ] Questora Cadre: WS 4, BS 5; Artificer Armour; individual weapon exchange
- [ ] Raptora Cadre: Artificer Armour
- [ ] Vigilator Cadre: Chamber of Vigilance
- [ ] Eradicator Cadre: 80 pts, +15; BS 5; Ld 8/9; add Voidsheen Cloaks
- [ ] Pursuer Cadre: 35 pts; Execution Blades +5
- [ ] Expurgator Cadre: Adrathic Devastator (Suspensor Web) +20
- [ ] Silent Fury: Add Antigrav; Firing Protocols (2)
- [ ] Kharon Acquisitor: Gravis Melta Cannon replaces Multi-Melta
- [ ] Pursuit Beasts: Rage (2)

---
**Files:** Custodes and Sisters of Silence .cat files
**Reference:** Master tracking issue"

echo "Created: Custodes & Sisters of Silence"
sleep 2

# =============================================================
# SUB-ISSUE 23: Solar Auxilia
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Solar Auxilia (2022 - LI - Solar Auxilia.cat)" \
  --label "Panoptica update" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to Solar Auxilia files

### Points/Stat Changes
- [ ] Lifeward Section: WS 5; add Relentless
- [ ] Shadrak Meduson: WS 6
- [ ] Legion Optae: Attacks 3
- [ ] Tybalt Marr: Add Shattered Legionary
- [ ] Aethon Heavy Sentinel: Autocannon Free; various upgrade costs
- [ ] Legate Marshal: Add Field Officer
- [ ] Companion Section: Add Chosen Warriors, CCW; Combi options
- [ ] Tactical Command Section: Add Chosen Warriors, CCW
- [ ] Veletaris Command Section: 50 pts; up to 15 additional
- [ ] Line Command Section: 40 pts, +6 per model; Troop Master Ld 8; up to 15 additional
- [ ] Artillery Command Section: Add Artillery Spotters
- [ ] Dracosan: 135 pts; Demolisher +20; Transport Cap 12 with Demolisher
- [ ] Aurox: Transport Capacity 12
- [ ] Arvus: Add Hull (Front) Heavy Stubber
- [ ] Rapier Battery: Gunner Sv 4+

### Vehicle Changes
- [ ] Leman Russ Strike: Exterminator Autocannon; Gravis Heavy Lascannon
- [ ] Leman Russ Assault: 160 pts, +145; Rear Armour 11
- [ ] Malcador: TL Gravis Heavy Lascannon; Lascannons +15; Demolisher +35
- [ ] Malcador Infernus: Heavy Support; add Independent Fire Control
- [ ] Valdor: Add Independent Fire Control
- [ ] Stormhammer: Front Armour 14
- [ ] Command Tank: Revised rules

### Cohort Doctrines
- [ ] Armoured Fist: Leman Russ Compulsory gain Line; first Disembark Relentless
- [ ] Reborn Cohorts: +1 Ld (max 10), Stubborn for Infantry
- [ ] Reconnaissance: Hermes Veletaris gain Outflank
- [ ] Penal/Feral/Siege Pattern: Various updates

### Weapon Profiles
- [ ] Battle Cannon, Demolisher, Earthshaker, Medusa Mortar, Stormhammer Cannon
- [ ] Grenade Launcher Krak, Vratine GL Krak, Aethon Missile Battery, Hermes GL Krak, Albian Power Gladius

### Legacies Solar Auxilia
- [ ] Carnodon, Thunderer, Destroyer, Trojan, Minotaur, Macharius, super-heavies, Praetor, Crassus, Artillery Battery, Davinite Lodge Priest

---
**Files:** Solar Auxilia .cat files
**Reference:** Master tracking issue"

echo "Created: Solar Auxilia"
sleep 2

# =============================================================
# SUB-ISSUE 24: Assassins
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Assassins (2022 - LI - Assassins.cat)" \
  --label "Panoptica update" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to \`2022 - LI - Assassins.cat\`

### Global Changes
- [ ] All Assassins: Wounds increased to 3
- [ ] Assassin Sub-type: Add Precision Shots (2+), Precision Strikes (2+), Predator's Gaze
- [ ] Anathema Sub-type: Force/Achean Force/Soul Tear no benefit vs Anathema
- [ ] Panoply of the Assassin: Add Frag Grenades, Hit & Run, Shrouded (5+)

### Individual Assassin Changes
- [ ] Vindicare: W3; Exitus Rifle 100\" S7 AP2 Heavy 1, Murderous Strike (5+), Rending (6+), Sniper, Brutal (2)
- [ ] Culexus: WS 5; W3; Animus Blast Template S4 AP4 Assault 1, Rending (6+), Psy-Shock, Soul-Death
- [ ] Callidus: W3; Polymorphine no Scoring/Denial while active
- [ ] Eversor: W3; add No Witnesses
- [ ] Venenum: W3; add Fleet (2); Hookfang User AP3 Poisoned (3+), Breaching (5+)
- [ ] Adamus: W3; add Preferred Enemy (Characters)
- [ ] Vanus Infocyte: W3; add Panoply; remove IC; Servo-Limbs Counter-Attack (2) once per battle

---
**Search tips:** Search for Vindicare, Culexus, Callidus, Eversor, Venenum, Adamus, Vanus, Assassin Sub-type, Anathema, Panoply
**Reference:** Master tracking issue"

echo "Created: Assassins"
sleep 2

# =============================================================
# SUB-ISSUE 25: Imperialis Militia
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Imperialis Militia" \
  --label "Panoptica update" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to Imperialis Militia files

### Unit Points/Stat Changes
- [ ] Command Cadre: +5 per model; Plasma Gun +10; exchange per 5 models
- [ ] Grenadier Squad: Exchange per 10 models (up to 2)
- [ ] Fire Support Squad: 35 pts, +10; add Skirmish, Crew-Served; Missile Launcher adds Flak
- [ ] Reconnaissance Squad: 35 pts; add Skirmish
- [ ] Cavalry Squad: Wounds 2; add Skirmish; exchange per 5; Militia Lance +2 pts
- [ ] Beastmasters: 30 pts; Fleet (1) and Light (Handlers)
- [ ] Ogryn Brute Squad: Boarding Shield grants Heavy
- [ ] Field Gun Battery: Heavy Lascannon +10; Kalliope +10; add Skirmish
- [ ] Sentinel Squadron: 40 pts, +40; Missile Launcher adds Flak
- [ ] Heavy Ordnance Gun Carriage: Static Artillery Heavy; Immobile/Bulky (5); profile updated
- [ ] Baneblade: HP 12
- [ ] War Beasts: Rage (2)
- [ ] Thunderbolt: Add Air Superiority

### Vehicle Changes
- [ ] Malcador: Add Independent Fire Control; weapon updates
- [ ] Leman Russ: Exterminator Autocannon; Gravis Heavy Lascannon; Hull Lascannon +10
- [ ] Gorgon: Add Assault Vehicle
- [ ] Arvus: Add Heavy Stubber and Searchlights

### Provenance Changes
- [ ] Clanfolk Levy: Cavalry Compulsory gain Line; +1 Ld; +4 Fast Attack (Cavalry)
- [ ] Legacy of Great Crusade: +1 BS (max 4) for Grenadiers/Command/DM; FC Init 5
- [ ] Cyber-Augmetics: FNP (6+) and S&P; Medicae improves to (5+)
- [ ] Kinfolk Helots: +1T/-1I/-1M; Characters Battlesmith (6+); ICs (5+)
- [ ] Abhuman Muster: +1S/+1M/-1BS; Bulky (2); HoW scaling
- [ ] Arms of Omnissiah: Sworn Brothers Mechanicum; Arc Rifles +25 per unit
- [ ] Augmented Levy: Sworn Brothers Mechanicum

### Special Rule Changes
- [ ] Militia Standard: Grants Line
- [ ] Ungainly: Successful Charge (even Disordered); no bonus attacks
- [ ] Mechanised Sub-type: Attacks resolved as Dreadnought
- [ ] Force Commander/Discipline Master mounted profiles: Cavalry, Skirmish, Light
- [ ] Emplaced in ZM: Suppress Reaction only

### Weapon Profiles
- [ ] Battle/Demolisher/Baneblade/Thunderblast Cannon
- [ ] Earthshaker, Medusa Mortar, Volkite Macro-Saker
- [ ] Grenade Launcher Krak, Ripper Gun (melee), Melta Lance (melee)

---
**Files:** Imperialis Militia .cat files
**Reference:** Master tracking issue"

echo "Created: Imperialis Militia"
sleep 2

# =============================================================
# SUB-ISSUE 26: Daemons of the Ruinstorm
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Daemons of the Ruinstorm" \
  --label "Panoptica update" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to Daemons of the Ruinstorm files

### Points/Stat Changes
- [ ] Daemon Sovereign: Add Lords of the Ruinstorm; Greatblade +40; Wings +50
- [ ] Daemon Hierarch: WS 6; add Independent Character
- [ ] Daemon Harbinger: Armour Save 3+
- [ ] Daemon Beasts: 70 pts, +20; A4; add Furious Charge (1), Scout
- [ ] Lesser Daemons: 100 pts
- [ ] Daemon Cavalry: Ld 7; add Hit & Run, HoW (1), Bulky (2)
- [ ] Daemon Harriers: 100 pts; A2; add Deep Strike
- [ ] Greater Daemon Beast: Ld 8; S6 T6; add Bulky (5), Feeding Frenzy
- [ ] Daemon Behemoth: WS 5; Ld 8
- [ ] Arch-Daemon: Wings +50; add Warp Resplendent

### Special Rule Changes
- [ ] Daemon Swarms: Remove Swarm; add Daemonic Hordes
- [ ] Gargantuan: May ignore Heroic Stand (unless Knight/Gargantuan/Titan/Primarch/Daemon Primarch)

### Named Daemon Changes
- [ ] Cor'Bax Utterblight (Unbound & Bound): Add Bulky (6)

### Additional Wargear Options
- [ ] Hierarch: Exchange Infernal Armaments for Sovereign Armaments +30
- [ ] Harbinger: Exchange Harbinger Blade for Infernal Armaments Free
- [ ] Behemoth: The Unmaking +25

### Other
- [ ] Formless Distortion result 2: Lashing Pseudopods Reach (1), Rending (6+)
- [ ] Behemoth Blade: User AP2 Brutal (3), Sunder, Lance, Exoshock (5+)

---
**File:** Daemons of the Ruinstorm .cat files
**Reference:** Master tracking issue"

echo "Created: Daemons of the Ruinstorm"
sleep 2

# =============================================================
# SUB-ISSUE 27: Legacies & Exemplary Battles
# =============================================================
gh issue create --repo "$REPO" \
  --title "Panoptica Update: Legacies & Exemplary Battles (various .cat files)" \
  --label "Panoptica update" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Apply Panoptica changes to Legacies and Exemplary Battles files

### Legacies: Legiones Astartes
- [ ] Castra Ferrum Dreadnought: 150 pts, +150; Gravis Melta Cannon +15
- [ ] Tarantula Sentry Gun: 60 pts; remove Bulky (4); add Immobile; updated profile
- [ ] Spatha Attack Bike: Add Support Squad, Hit & Run, Outflank; W3; Movement 14; various rules
- [ ] Land Raider Phobos: Selectable wherever Proteus is an option
- [ ] Land Raider Achilles: Replace Achillus Quad with Quad Launcher
- [ ] Indomitus Terminator: Transport Proteus/Dreadclaw (<=5) or Spartan
- [ ] Nullificator Squad: -1 To Wound Psychic; re-roll Invuln vs Psychic/Daemon/Corrupted; Transport options
- [ ] Primus Nullificator: Ld 10; may exchange Power Weapon for Aether-Shock Maul
- [ ] Caestus Assault Ram: Movement 18\"; Transport 12; Afterburner, Caestus Prow, Inertia Clamps
- [ ] Malcador: Hull mounted; Independent Fire Control; weapon updates
- [ ] Minotaur Battery: Replace with Earthshaker Battery

### Legacies: Super-Heavies
- [ ] Stormblade: 500 pts; FA 14; add Hull Heavy Bolter
- [ ] Baneblade: 475 pts; FA 14
- [ ] Stormsword: 525 pts; FA 14
- [ ] Stormlord: 475 pts; Transport 32; Tank Desant (10); Assault Vehicle; FA 14
- [ ] Shadowsword: 550 pts; FA 14
- [ ] Banehammer: 500 pts; Transport 22; Tank Desant (10); FA 14
- [ ] Macharius: Move to HS; 350 pts, +335; up to 2 additional
- [ ] Macharius Omega: Move to HS; add Exposed Compartment
- [ ] Praetor Launcher: 475 pts
- [ ] Crassus Transport: Capacity 48; add Transport Bay

### Legacies: Named Characters
- [ ] Nomus Rhy'Tan, Xiaphas Jurr, Cassian Dracos, Telemechrus, Rylanor, Alvarex Maun, Farith Redloss
- [ ] Erasmus Golg, Autilon Skorr, Shabran Darr, Crysos Mortug, Kheron Ophion
- [ ] Marshal Durak Rask: W3; 3 Phosphex Bombs
- [ ] Kaedes Nex: Artificer Armour; Consul (Moritat)
- [ ] Iron Havocs, Blood Slaughterer, Locutarus Storm Squad
- [ ] Excindio Battle Automata: 300 pts; Atomantic Deflector; +4\" explosion; attacks as Dreadnought

### Legacies: Mechanicum
- [ ] Inar Satarael, Certus Covenant, Macrocarid, Ordo Reductor Artillery/Minotaur, Mech Tarantula

### Legacies: Fortifications
- [ ] Vengeance Weapon Battery: Add Hardwired Defences
- [ ] Hammerfall Bunker: Hardwired Defences, PotMS; Deep Strike option
- [ ] Void Shield Envelope: 4+ Invulnerable Save

### Exemplary Battles
- [ ] IF Huscarl, DA Broken Claws, DG Mortus Poisoner, WS Dark Sons, EC Sun Killer
- [ ] NL Atramentar, IW Dominator, WE Red Hand, Sal Sanctifier
- [ ] Fulgrim Transfigured, WB Procurators, SW Jorlund, RG Deliverers
- [ ] Daemon Primarch Unit Type updates
- [ ] UM Nemesis Destroyer

---
**Files:** Various Legacies and Exemplary Battles .cat files
**Reference:** Master tracking issue"

echo "Created: Legacies & Exemplary Battles"
sleep 2

# =============================================================
echo ""
echo "============================================="
echo "All 28 issues created successfully!"
echo "============================================="
echo ""
echo "Next steps:"
echo "1. Go to https://github.com/neotheone-HH22/horus-heresy-2nd-edition/issues"
echo "2. Note the issue numbers assigned to each"
echo "3. Edit the Master Tracking Issue to update the checklist with issue numbers"
echo "4. (Optional) Set up parent-child relationships between master and sub-issues"