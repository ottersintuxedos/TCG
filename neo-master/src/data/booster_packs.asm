BoosterSetRarityAmountsTable: ; 1e4d4 (7::64d4)
;	db energies, commons, uncommons, rares
; commons + uncommons + rares needs to be equal to 10 minus the number of energy cards
; defined in the pack's data below; otherwise, the number of cards in the pack won't be 10.
	db 1, 5, 3, 1 ; GENESIS
	db 1, 5, 3, 1 ; DISCOVERY
	db 0, 6, 3, 1 ; REVELATION
	db 0, 6, 3, 1 ; EXODUS

booster_set: MACRO
	db \1 >> 4
ENDM

; For the energy or energy generation function, there are three options:
; - Pointer to a function that generates energies (some generate one, some generate a full pack)
; - A single energy of a specific type
; - NULL if no card in the pack is an energy

; As for Card Type Chances, note that whenever one card of the 10 is drawn, the chances of
; the type of that card are reduced by the original average of all 8 types (capping the result at 1).
; This average always outputs 17 (except for the energy-only packs).

BoosterPack_GenesisNeutral:: ; 1e4e4 (7:64e4)
	booster_set GENESIS ; booster pack set
	dw GenerateRandomEnergy ; energy or energy generation function

; Card Type Chances
	db 20 ; Grass Type Chance
	db 20 ; Fire Type Chance
	db 20 ; Water Type Chance
	db 20 ; Lightning Type Chance
	db 20 ; Fighting Type Chance
	db 20 ; Psychic Type Chance
	db 20 ; Colorless Type Chance
	db 20 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_GenesisGrass:: ; 1e4f0 (7:64f0)
	booster_set GENESIS ; booster pack set
	dw GRASS_ENERGY ; energy or energy generation function

; Card Type Chances
	db 48 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_GenesisFire:: ; 1e4fc (7:64fc)
	booster_set GENESIS ; booster pack set
	dw FIRE_ENERGY ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 48 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_GenesisWater:: ; 1e508 (7:6508)
	booster_set GENESIS ; booster pack set
	dw WATER_ENERGY ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 48 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_GenesisLightning:: ; 1e514 (7:6514)
	booster_set GENESIS ; booster pack set
	dw LIGHTNING_ENERGY ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 48 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_GenesisFighting:: ; 1e520 (7:6520)
	booster_set GENESIS ; booster pack set
	dw FIGHTING_ENERGY ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 48 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_GenesisTrainer:: ; 1e52c (7:652c)
	booster_set GENESIS ; booster pack set
	dw GenerateRandomEnergy ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 48 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_DiscoveryNeutral:: ; 1e538 (7:6538)
	booster_set DISCOVERY ; booster pack set
	dw GenerateRandomEnergy ; energy or energy generation function

; Card Type Chances
	db 20 ; Grass Type Chance
	db 20 ; Fire Type Chance
	db 20 ; Water Type Chance
	db 20 ; Lightning Type Chance
	db 20 ; Fighting Type Chance
	db 20 ; Psychic Type Chance
	db 20 ; Colorless Type Chance
	db 20 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_DiscoveryGrass:: ; 1e544 (7:6544)
	booster_set DISCOVERY ; booster pack set
	dw GRASS_ENERGY ; energy or energy generation function

; Card Type Chances
	db 48 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_DiscoveryNeutralFireEnergy:: ; 1e550 (7:6550)
	booster_set DISCOVERY ; booster pack set
	dw FIRE_ENERGY ; energy or energy generation function

; Card Type Chances
	db 20 ; Grass Type Chance
	db 20 ; Fire Type Chance
	db 20 ; Water Type Chance
	db 20 ; Lightning Type Chance
	db 20 ; Fighting Type Chance
	db 20 ; Psychic Type Chance
	db 20 ; Colorless Type Chance
	db 20 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_DiscoveryWater:: ; 1e55c (7:655c)
	booster_set DISCOVERY ; booster pack set
	dw WATER_ENERGY ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 48 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_DiscoveryFighting:: ; 1e568 (7:6568)
	booster_set DISCOVERY ; booster pack set
	dw FIGHTING_ENERGY ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 48 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_DiscoveryPsychic:: ; 1e574 (7:6574)
	booster_set DISCOVERY ; booster pack set
	dw PSYCHIC_ENERGY ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 48 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_DiscoveryTrainer:: ; 1e580 (7:6580)
	booster_set DISCOVERY ; booster pack set
	dw GenerateRandomEnergy ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 48 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_RevelationNeutral:: ; 1e58c (7:658c)
	booster_set REVELATION ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 17 ; Grass Type Chance
	db 17 ; Fire Type Chance
	db 17 ; Water Type Chance
	db 17 ; Lightning Type Chance
	db 17 ; Fighting Type Chance
	db 17 ; Psychic Type Chance
	db 17 ; Colorless Type Chance
	db 17 ; Trainer Card Chance
	db 17 ; Energy Card Chance

BoosterPack_RevelationGrassColorless:: ; 1e598 (7:6598)
	booster_set REVELATION ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 48 ; Grass Type Chance
	db 12 ; Fire Type Chance
	db 12 ; Water Type Chance
	db 12 ; Lightning Type Chance
	db 12 ; Fighting Type Chance
	db 12 ; Psychic Type Chance
	db 22 ; Colorless Type Chance
	db 12 ; Trainer Card Chance
	db 12 ; Energy Card Chance

BoosterPack_RevelationWaterColorless:: ; 1e5a4 (7:65a4)
	booster_set REVELATION ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 12 ; Grass Type Chance
	db 12 ; Fire Type Chance
	db 48 ; Water Type Chance
	db 12 ; Lightning Type Chance
	db 12 ; Fighting Type Chance
	db 12 ; Psychic Type Chance
	db 22 ; Colorless Type Chance
	db 12 ; Trainer Card Chance
	db 12 ; Energy Card Chance

BoosterPack_RevelationLightningColorless:: ; 1e5b0 (7:65b0)
	booster_set REVELATION ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 12 ; Grass Type Chance
	db 12 ; Fire Type Chance
	db 12 ; Water Type Chance
	db 48 ; Lightning Type Chance
	db 12 ; Fighting Type Chance
	db 12 ; Psychic Type Chance
	db 22 ; Colorless Type Chance
	db 12 ; Trainer Card Chance
	db 12 ; Energy Card Chance

BoosterPack_RevelationFightingColorless:: ; 1e5bc (7:65bc)
	booster_set REVELATION ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 12 ; Grass Type Chance
	db 12 ; Fire Type Chance
	db 12 ; Water Type Chance
	db 12 ; Lightning Type Chance
	db 48 ; Fighting Type Chance
	db 12 ; Psychic Type Chance
	db 22 ; Colorless Type Chance
	db 12 ; Trainer Card Chance
	db 12 ; Energy Card Chance

BoosterPack_RevelationTrainerColorless:: ; 1e5c8 (7:65c8)
	booster_set REVELATION ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 12 ; Grass Type Chance
	db 12 ; Fire Type Chance
	db 12 ; Water Type Chance
	db 12 ; Lightning Type Chance
	db 12 ; Fighting Type Chance
	db 12 ; Psychic Type Chance
	db 22 ; Colorless Type Chance
	db 48 ; Trainer Card Chance
	db 12 ; Energy Card Chance

BoosterPack_ExodusMostlyNeutral:: ; 1e5d4 (7:65d4)
	booster_set EXODUS ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 20 ; Grass Type Chance
	db 20 ; Fire Type Chance
	db 20 ; Water Type Chance
	db 20 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 20 ; Psychic Type Chance
	db 20 ; Colorless Type Chance
	db 24 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_ExodusGrass:: ; 1e5e0 (7:65e0)
	booster_set EXODUS ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 48 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_ExodusWater:: ; 1e5ec (7:65ec)
	booster_set EXODUS ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 48 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_ExodusPsychic:: ; 1e5f8 (7:65f8)
	booster_set EXODUS ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 48 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 16 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_ExodusTrainer:: ; 1e604 (7:6604)
	booster_set EXODUS ; booster pack set
	dw NULL ; energy or energy generation function

; Card Type Chances
	db 16 ; Grass Type Chance
	db 16 ; Fire Type Chance
	db 16 ; Water Type Chance
	db 16 ; Lightning Type Chance
	db 16 ; Fighting Type Chance
	db 16 ; Psychic Type Chance
	db 16 ; Colorless Type Chance
	db 48 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_EnergyLightningFire:: ; 1e610 (7:6610)
	booster_set GENESIS ; booster pack set
	dw GenerateEnergyBoosterLightningFire ; energy or energy generation function

; Card Type Chances
	db  0 ; Grass Type Chance
	db  0 ; Fire Type Chance
	db  0 ; Water Type Chance
	db  0 ; Lightning Type Chance
	db  0 ; Fighting Type Chance
	db  0 ; Psychic Type Chance
	db  0 ; Colorless Type Chance
	db  0 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_EnergyWaterFighting:: ; 1e61c (7:661c)
	booster_set GENESIS ; booster pack set
	dw GenerateEnergyBoosterWaterFighting ; energy or energy generation function

; Card Type Chances
	db  0 ; Grass Type Chance
	db  0 ; Fire Type Chance
	db  0 ; Water Type Chance
	db  0 ; Lightning Type Chance
	db  0 ; Fighting Type Chance
	db  0 ; Psychic Type Chance
	db  0 ; Colorless Type Chance
	db  0 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_EnergyGrassPsychic:: ; 1e628 (7:6628)
	booster_set GENESIS ; booster pack set
	dw GenerateEnergyBoosterGrassPsychic ; energy or energy generation function

; Card Type Chances
	db  0 ; Grass Type Chance
	db  0 ; Fire Type Chance
	db  0 ; Water Type Chance
	db  0 ; Lightning Type Chance
	db  0 ; Fighting Type Chance
	db  0 ; Psychic Type Chance
	db  0 ; Colorless Type Chance
	db  0 ; Trainer Card Chance
	db  0 ; Energy Card Chance

BoosterPack_RandomEnergies:: ; 1e634 (7:6634)
	booster_set GENESIS ; booster pack set
	dw GenerateRandomEnergyBooster ; energy or energy generation function

; Card Type Chances
	db  0 ; Grass Type Chance
	db  0 ; Fire Type Chance
	db  0 ; Water Type Chance
	db  0 ; Lightning Type Chance
	db  0 ; Fighting Type Chance
	db  0 ; Psychic Type Chance
	db  0 ; Colorless Type Chance
	db  0 ; Trainer Card Chance
	db  0 ; Energy Card Chance
