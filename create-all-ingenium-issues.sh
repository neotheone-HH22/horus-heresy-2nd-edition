#!/bin/bash
# =============================================================
# Create all Liber Ingenium tracking issues for
# neotheone-HH22/horus-heresy-2nd-edition
# =============================================================
# Prerequisites: Install GitHub CLI (gh) and authenticate:
#   brew install gh   (or see https://cli.github.com/)
#   gh auth login
# =============================================================
# Source: Liber Ingenium - The Marching Forge (v1.3, 115 pages)
# =============================================================

REPO="neotheone-HH22/horus-heresy-2nd-edition"

# =============================================================
# MASTER TRACKING ISSUE
# =============================================================
gh issue create --repo "$REPO" \
  --title "Tracking: Implement Liber Ingenium (The Marching Forge) content" \
  --label "tracking" --label "BattleScribe" \
  --assignee neotheone-HH22 \
  --body "## Liber Ingenium — Master Tracking Issue

This issue tracks implementation work for **Liber Ingenium: The Marching Forge** (v1.3, 30/05/2023) in Horus Heresy 2e BattleScribe/NewRecruit data files.

---

### Source Document
\`Liber Ingenium.txt\` (derived from Liber Ingenium: The Marching Forge)

### Scope
- Break source content into focused implementation slices
- Track Taghmata Omnissiah units by Force Organisation slot
- Track Divisio Tactica additions (Questoris Households and Titan Legions)
- Track appendices (Unit Types, Techno-Arcana, Special Rules, Armoury, Wargear, Warlord Traits, Base Sizes)

### Sub-Issues Checklist
_Update with issue numbers once all sub-issues are created_

#### Taghmata Omnissiah — Army List
- [ ] HQ Units (p6–17)
- [ ] Elites Units (p20–29)
- [ ] Troops & Dedicated Transports (p32–39)
- [ ] Fast Attack Units (p42–51)
- [ ] Heavy Support Units (p54–61)
- [ ] Lords of War Units (p64–67)

#### Divisio Tactica
- [ ] Questoris Households additions (p70–75)
- [ ] Titan Legions additional options (p78–79)

#### Appendices
- [ ] Mechanicum Unit Types (p82)
- [ ] Orders of Lesser and Higher Techno-Arcana (p86–89)
- [ ] Mechanicum Special Rules (p90–95)
- [ ] Armoury of the Mechanicum — weapon profiles (p96–103)
- [ ] Mechanicum Wargear (p104–109)
- [ ] Legiones Skitarii Warlord Traits (p110–113)
- [ ] Base Sizing Chart (p114–115)

---

### Action Plan
1. Implement shared references first (Unit Types, Arcana, Special Rules, Armoury, Wargear)
2. Implement Force Organisation sections (HQ → Elites → Troops → Fast Attack → Heavy Support → Lords of War)
3. Implement Divisio Tactica sections (Questoris then Titan Legions)
4. Add Skitarii Warlord Traits and Base Sizing references
5. Validate in BattleScribe/NewRecruit

### If you contribute
- Please reference this issue in your PR
- Keep each PR focused to one sub-issue
- Ensure no XML validation errors are introduced"

echo "Created: Master Tracking Issue"
sleep 2

# =============================================================
# SUB-ISSUE 1: HQ
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: HQ Units (p6–17)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Liber Ingenium HQ unit entries

**Source:** Liber Ingenium, pages 6–17

### Units to implement
- [ ] Magos Prime
- [ ] Magos Prime on Abeyant
- [ ] Skitarii Centurius
- [ ] Sicarian Clademaster
- [ ] Praetorian Servitor Maniple
- [ ] Arkhan Land
- [ ] Remiare
- [ ] Koriel Zeth
- [ ] Kelbor-Hal
- [ ] Additional wargear options for existing HQ units

---
**Reference:** Master tracking issue"

echo "Created: HQ Units"
sleep 2

# =============================================================
# SUB-ISSUE 2: Elites
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Elites Units (p20–29)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Liber Ingenium Elites unit entries

**Source:** Liber Ingenium, pages 20–29

### Units to implement
- [ ] Sarumiat Battle-Automata Maniple
- [ ] Cydonian Dragoons
- [ ] Skitarii Liquidator Cohort
- [ ] Sicarian Kill-Clade
- [ ] Kataphron Breacher Servitor Maniple
- [ ] Kataphron Destructor Servitor Maniple
- [ ] Cydonian Sisterhood Clade
- [ ] Triaros Guardian
- [ ] Additional wargear options for existing Elites units

---
**Reference:** Master tracking issue"

echo "Created: Elites Units"
sleep 2

# =============================================================
# SUB-ISSUE 3: Troops
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Troops & Dedicated Transports (p32–39)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Liber Ingenium Troops and dedicated transports

**Source:** Liber Ingenium, pages 32–39

### Units to implement
- [ ] Skitarii Vanguard Cohort
- [ ] Skitarii Ranger Cohort
- [ ] Skitarii Decimator Cohort
- [ ] Electro-Priest Conclave
- [ ] Kastelan Battle-Automata Maniple
- [ ] Skorpius Dunerider (Dedicated Transport)
- [ ] Porphetian Armoured Carrier (Dedicated Transport)

---
**Reference:** Master tracking issue"

echo "Created: Troops & Dedicated Transports"
sleep 2

# =============================================================
# SUB-ISSUE 4: Fast Attack
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Fast Attack Units (p42–51)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Liber Ingenium Fast Attack unit entries

**Source:** Liber Ingenium, pages 42–51

### Units to implement
- [ ] Cyber-Carnivora Pack
- [ ] Pteraxii Skyhunter Cohort
- [ ] Serberys Tormentor Conclave
- [ ] Herax Battle-Automata Maniple
- [ ] Mechanicum Lightning Strike Fighter
- [ ] Mechanicum Avenger Strike Fighter
- [ ] Archaeopter Transvector Squadron
- [ ] Archaeopter Imperator Squadron
- [ ] Mechanicum Arvus Lighter
- [ ] Additional wargear options for existing Fast Attack units

---
**Reference:** Master tracking issue"

echo "Created: Fast Attack Units"
sleep 2

# =============================================================
# SUB-ISSUE 5: Heavy Support
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Heavy Support Units (p54–61)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Liber Ingenium Heavy Support unit entries

**Source:** Liber Ingenium, pages 54–61

### Units to implement
- [ ] Thanatar-Cynis Siege-Automata Maniple
- [ ] Kharax Siege-Automata Maniple
- [ ] Septekar Siege-Automata Maniple
- [ ] Ironstrider Ballistarius
- [ ] Onager Dunecrawler Squadron
- [ ] Skorpius Disintegrator Squadron
- [ ] Ordinatus-Exemplar War Construct
- [ ] Additional wargear options for existing Heavy Support units

---
**Reference:** Master tracking issue"

echo "Created: Heavy Support Units"
sleep 2

# =============================================================
# SUB-ISSUE 6: Lords of War
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Lords of War Units (p64–67)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Liber Ingenium Lords of War unit entries

**Source:** Liber Ingenium, pages 64–67

### Units to implement
- [ ] The Kaban Machine
- [ ] Hierarch Siege-Automata
- [ ] Oppressor Super-Heavy Siege Tank
- [ ] Ordinatus-Minoris Macro Engine

---
**Reference:** Master tracking issue"

echo "Created: Lords of War Units"
sleep 2

# =============================================================
# SUB-ISSUE 7: Questoris Households
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Divisio Tactica — Questoris Households (p70–75)" \
  --label "BattleScribe" --label "Questoris" \
  --assignee neotheone-HH22 \
  --body "## Implement Questoris Households additions from Liber Ingenium

**Source:** Liber Ingenium, pages 70–75

### Content to implement
- [ ] Questoris Crusader Host Force Organisation Chart updates
- [ ] Questoris Knight Moirax Talon
- [ ] Knight Maeliviax
- [ ] Knight Dominus
- [ ] Additional wargear options for existing Questoris units

---
**Reference:** Master tracking issue"

echo "Created: Questoris Households"
sleep 2

# =============================================================
# SUB-ISSUE 8: Titan Legions
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Divisio Tactica — Titan Legions options (p78–79)" \
  --label "BattleScribe" --label "Titan Legions" \
  --assignee neotheone-HH22 \
  --body "## Implement Titan Legions additional options from Liber Ingenium

**Source:** Liber Ingenium, pages 78–79

### Content to implement
- [ ] Warhound Scout Titan option additions
- [ ] Reaver Battle Titan option additions
- [ ] Warlord Battle Titan option additions

---
**Reference:** Master tracking issue"

echo "Created: Titan Legions options"
sleep 2

# =============================================================
# SUB-ISSUE 9: Unit Types
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Mechanicum Unit Types (p82)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Mechanicum Unit Types from Liber Ingenium

**Source:** Liber Ingenium, page 82

### Unit Types to implement
- [ ] Crawler Unit Sub-type
- [ ] Servitor Unit Sub-type
- [ ] Skitarii Unit Sub-type
- [ ] Paragon Unit Sub-type

---
**Reference:** Master tracking issue"

echo "Created: Mechanicum Unit Types"
sleep 2

# =============================================================
# SUB-ISSUE 10: Techno-Arcana
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Orders of Lesser and Higher Techno-Arcana (p86–89)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Techno-Arcana appendices from Liber Ingenium

**Source:** Liber Ingenium, pages 86–89

### Content to implement
- [ ] Orders of Lesser Techno-Arcana
- [ ] Orders of Higher Techno-Arcana
- [ ] Protocol and condition logic tied to these orders

---
**Reference:** Master tracking issue"

echo "Created: Techno-Arcana"
sleep 2

# =============================================================
# SUB-ISSUE 11: Special Rules
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Mechanicum Special Rules (p90–95)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Mechanicum special rules from Liber Ingenium

**Source:** Liber Ingenium, pages 90–95

### Content to implement
- [ ] Add all new rules in the section as shared rules
- [ ] Add linked rules used by new units and wargear
- [ ] Ensure all rule names and effects align with source text

---
**Reference:** Master tracking issue"

echo "Created: Mechanicum Special Rules"
sleep 2

# =============================================================
# SUB-ISSUE 12: Armoury
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Armoury of the Mechanicum (p96–103)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Liber Ingenium weapon profiles

**Source:** Liber Ingenium, pages 96–103

### Content to implement
- [ ] Ranged weapon profiles
- [ ] Melee weapon profiles
- [ ] Any profile variants and conditional profile text
- [ ] Cross-link to weapon categories used by affected units

---
**Reference:** Master tracking issue"

echo "Created: Armoury of the Mechanicum"
sleep 2

# =============================================================
# SUB-ISSUE 13: Wargear
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Mechanicum Wargear (p104–109)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Liber Ingenium wargear entries

**Source:** Liber Ingenium, pages 104–109

### Content to implement
- [ ] Add all wargear entries from appendix
- [ ] Ensure option costs and limits match source
- [ ] Link wargear to unit entries requiring them

---
**Reference:** Master tracking issue"

echo "Created: Mechanicum Wargear"
sleep 2

# =============================================================
# SUB-ISSUE 14: Warlord Traits
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Legiones Skitarii Warlord Traits (p110–113)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Implement Legiones Skitarii Warlord Traits

**Source:** Liber Ingenium, pages 110–113

### Traits to implement
- [ ] Full Frame Rebuild
- [ ] Encoded Hate
- [ ] Uplink Override
- [ ] Iron Master
- [ ] Data-Locus
- [ ] Cohort Primus

---
**Reference:** Master tracking issue"

echo "Created: Legiones Skitarii Warlord Traits"
sleep 2

# =============================================================
# SUB-ISSUE 15: Base Sizing
# =============================================================
gh issue create --repo "$REPO" \
  --title "Liber Ingenium: Base Sizing Chart (p114–115)" \
  --label "BattleScribe" --label "Mechanicum" \
  --assignee neotheone-HH22 \
  --body "## Apply base size guidance from Liber Ingenium

**Source:** Liber Ingenium, pages 114–115

### Content to apply
- [ ] Capture base size recommendations for all new units
- [ ] Add/update base size notes where applicable
- [ ] Verify consistency with existing basing conventions in repository

---
**Reference:** Master tracking issue"

echo "Created: Base Sizing Chart"
sleep 2

echo ""
echo "============================================="
echo "All 16 issues created (1 master + 15 sub-issues)"
echo "============================================="
echo ""
echo "Next steps:"
echo "1. Note down the issue numbers from the output above"
echo "2. Update the master tracking issue with sub-issue numbers"
echo "3. Update INGENIUM_PROGRESS.md with issue numbers"
