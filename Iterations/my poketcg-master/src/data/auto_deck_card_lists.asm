; card lists read by AutoDeckMachineEntries
; each list entry is a card count and card ID pair

AllFightingPokemonCardList: ; 1b0da (6:70da)
	db 26, FIGHTING_ENERGY
	db  2, SANDSHREW
	db  1, SANDSLASH
	db  2, DIGLETT
	db  1, DUGTRIO
	db  2, MANKEY
	db  1, PRIMEAPE
	db  3, MACHOP
	db  2, MACHOKE
	db  1, MACHAMP
	db  2, GEODUDE
	db  1, GRAVELER
	db  1, GOLEM
	db  1, ONIX
	db  2, CUBONE
	db  1, MAROWAK1
	db  1, HITMONLEE
	db  1, HITMONCHAN
	db  2, RHYHORN
	db  1, RHYDON
	db  1, PROFESSOR_OAK
	db  2, BILL
	db  1, SWITCH
	db  2, POTION
	db  0 ; end of list

BenchAttackCardList: ; 1b10b (6:710b)
	db 12, LIGHTNING_ENERGY
	db 14, FIGHTING_ENERGY
	db  4, VOLTORB
	db  2, ELECTRODE2
	db  2, ZAPDOS1
	db  4, HITMONLEE
	db  2, HITMONCHAN
	db  4, MEOWTH1
	db  1, PROFESSOR_OAK
	db  2, BILL
	db  1, MR_FUJI
	db  2, ENERGY_RETRIEVAL
	db  2, SWITCH
	db  1, SCOOP_UP
	db  2, PLUSPOWER
	db  2, DEFENDER
	db  1, ITEM_FINDER
	db  1, GUST_OF_WIND
	db  1, MAINTENANCE
	db  0 ; end of list

BattleContestCardList: ; 1b132 (6:7132)
	db 24, FIGHTING_ENERGY
	db  2, DOUBLE_COLORLESS_ENERGY
	db  3, MANKEY
	db  4, MACHOP
	db  3, MACHOKE
	db  2, HITMONLEE
	db  2, HITMONCHAN
	db  3, MEOWTH1
	db  2, PERSIAN
	db  3, DRATINI
	db  2, DRAGONAIR
	db  1, DRAGONITE2
	db  1, PROFESSOR_OAK
	db  3, PLUSPOWER
	db  3, DEFENDER
	db  2, POTION
	db  0 ; end of list

CertainDeathCardList: ; 1b153 (6:7153)
	db 17, GRASS_ENERGY
	db 7, PSYCHIC_ENERGY
	db 4, SPINARAK1
	db 4, ARIADOS
	db 4, MISDREAVUS
	db 4, WOBBUFFET
	db 4, DOUBLE_GUST
	db 4, TEAM_ROCKETS_EVIL_DEEDS
	db 4, MASTER_BALL
	db 4, THOUGHT_WAVE_MACHINE
	db 4, BILLS_TELEPORTER
	db  0 ; end of list

RiversideCardList: ; 1b174 (6:7174)
	db 11, WATER_ENERGY
	db 5, FIGHTING_ENERGY
	db 4, POLIWAG
	db 4, POLIWHIRL
	db 4, POLITOED
	db 2, POLIWRATH
	db 4, WOOPER1
	db 4, QUAGSIRE2
	db 4, POKEMON_BREEDER_FIELDS
	db 2, SUPER_ROD
	db 4, POKEMON_MARCH
	db 4, MASTER_BALL
	db 4, HEAL_POWDER
	db 4, OLD_ROD
	db  0 ; end of list

SqueakingMouseCardList: ; 1b191 (6:7191)
	db  8, LIGHTNING_ENERGY
	db 15, FIGHTING_ENERGY
	db  2, DOUBLE_COLORLESS_ENERGY
	db  2, PIKACHU1
	db  2, PIKACHU2
	db  1, RAICHU1
	db  1, RAICHU2
	db  4, SANDSHREW
	db  3, SANDSLASH
	db  4, RATTATA
	db  3, RATICATE
	db  1, PROFESSOR_OAK
	db  2, BILL
	db  1, POKEMON_TRADER
	db  2, ENERGY_RETRIEVAL
	db  1, COMPUTER_SEARCH
	db  3, PLUSPOWER
	db  2, DEFENDER
	db  2, POTION
	db  1, SUPER_POTION
	db  0 ; end of list

GreatQuakeCardList: ; 1b1ba (6:71ba)
	db 25, FIGHTING_ENERGY
	db  4, DIGLETT
	db  3, DUGTRIO
	db  4, ONIX
	db  3, RHYHORN
	db  2, RHYDON
	db  2, KANGASKHAN
	db  1, TAUROS
	db  1, SNORLAX
	db  1, PROFESSOR_OAK
	db  2, BILL
	db  2, POKEMON_TRADER
	db  3, SWITCH
	db  4, DEFENDER
	db  3, POTION
	db  0 ; end of list

BoneAttackCardList: ; 1b1d9 (6:71d9)
	db 24, FIGHTING_ENERGY
	db  3, SANDSHREW
	db  2, SANDSLASH
	db  3, GEODUDE
	db  2, GRAVELER
	db  1, GOLEM
	db  4, ONIX
	db  4, CUBONE
	db  1, MAROWAK1
	db  2, MAROWAK2
	db  2, RHYHORN
	db  1, RHYDON
	db  2, BILL
	db  1, MR_FUJI
	db  2, POKE_BALL
	db  1, POKEDEX
	db  3, DEFENDER
	db  2, POKEMON_FLUTE
	db  0 ; end of list

CephalopodCardList: ; 1b1fe (6:71fe)
	db 18, WATER_ENERGY
	db 5, PSYCHIC_ENERGY
	db 3, STARYU
	db 2, STARMIE
	db 3, OMANYTE
	db 2, OMASTAR
	db 4, SUICUNE2
	db 4, DUNSPARCE
	db 4, REMORAID
	db 3, OCTILLERY
	db 3, FOSSIL_EGG
	db 4, PROFESSOR_ELM
	db 2, MASTER_BALL
	db 2, NEW_POKEDEX
	db  0 ; end of list

AuguryCardList: ; 1b223 (6:7223)
	db 4, DOUBLE_COLORLESS_ENERGY
	db 4, DARKNESS_ENERGY
	db 4, RECYCLE_ENERGY
	db 2, MURKROW2
	db 2, MURKROW1
	db 4, MASTER_BALL
	db 4, HOOTHOOT
	db 4, FARFETCHD
	db 4, POKEMON MARCH
	db 4, NATU2
	db 4, XATU1
	db 4, MAX_REVIVE
	db 4, PROFESSOR_ELM
	db 4, OLD_ROD
	db 4, DOUBLE_GUST
	db 3, NOCTOWL
	db 1, MOOMOO_MILK
	db  0 ; end of list

BlueWaterCardList: ; 1b246 (6:7246)
	db 25, WATER_ENERGY
	db  2, PSYDUCK
	db  1, GOLDUCK
	db  2, POLIWAG
	db  1, POLIWHIRL
	db  1, POLIWRATH
	db  2, SEEL
	db  1, DEWGONG
	db  2, SHELLDER
	db  1, CLOYSTER
	db  2, KRABBY
	db  1, KINGLER
	db  2, HORSEA
	db  1, SEADRA
	db  1, MAGIKARP
	db  1, GYARADOS
	db  1, LAPRAS
	db  1, OMANYTE
	db  1, OMASTAR
	db  1, ARTICUNO1
	db  1, PROFESSOR_OAK
	db  2, BILL
	db  1, POKEMON_TRADER
	db  2, MYSTERIOUS_FOSSIL
	db  1, ENERGY_SEARCH
	db  1, POKE_BALL
	db  1, POTION
	db  1, SUPER_POTION
	db  0 ; end of list

OnTheBeachCardList: ; 1b27f (6:727f)
	db 16, WATER_ENERGY
	db 10, FIGHTING_ENERGY
	db  2, SEEL
	db  1, DEWGONG
	db  3, SHELLDER
	db  2, CLOYSTER
	db  3, KRABBY
	db  2, KINGLER
	db  3, STARYU
	db  2, STARMIE
	db  3, SANDSHREW
	db  2, SANDSLASH
	db  2, BILL
	db  2, ENERGY_RETRIEVAL
	db  2, ENERGY_REMOVAL
	db  2, GUST_OF_WIND
	db  3, POTION
	db  0 ; end of list

ParalyzeCardList: ; 1b2a2 (6:72a2)
	db  8, GRASS_ENERGY
	db 14, WATER_ENERGY
	db  4, DOUBLE_COLORLESS_ENERGY
	db  3, CATERPIE
	db  2, METAPOD
	db  3, SQUIRTLE
	db  2, WARTORTLE
	db  3, SHELLDER
	db  2, CLOYSTER
	db  4, STARYU
	db  3, STARMIE
	db  2, PROFESSOR_OAK
	db  2, BILL
	db  2, PLUSPOWER
	db  2, DEFENDER
	db  4, POTION
	db  0 ; end of list

EnergyRemovalCardList: ; 1b2c3 (6:72c3)
	db 15, WATER_ENERGY
	db  8, PSYCHIC_ENERGY
	db  3, DOUBLE_COLORLESS_ENERGY
	db  3, PSYDUCK
	db  2, GOLDUCK
	db  4, POLIWAG
	db  3, POLIWHIRL
	db  2, POLIWRATH
	db  4, GASTLY2
	db  3, HAUNTER1
	db  3, DRATINI
	db  2, DRAGONAIR
	db  1, PROFESSOR_OAK
	db  1, BILL
	db  1, LASS
	db  2, ENERGY_SEARCH
	db  2, ENERGY_REMOVAL
	db  1, SUPER_ENERGY_REMOVAL
	db  0 ; end of list

MemoriesOfYouthCardList: ; 1b2e8 (6:72e8)
	db 9, WATER_ENERGY
	db 4, RECYCLE_ENERGY
	db 4, HORSEA
	db 4, SEADRA
	db 4, KINGDRA2
	db 3, CLEFFA
	db 3, PICHU
	db 1, MAGBY
	db 4, PROFESSOR_ELM
	db 4, TEAM_ROCKETS_EVIL_DEEDS
	db 4, DOUBLE_GUST
	db 3, BILLS_TELEPORTER
	db 4, MOOMOO_MILK
	db 3, HEAL_POWDER
	db 4, MASTER_BALL
	db 2, POKEGEAR
	db  0 ; end of list

CutePokemonCardList: ; 1b30d (6:730d)
	db  4, FIRE_ENERGY
	db  6, WATER_ENERGY
	db  8, LIGHTNING_ENERGY
	db  2, DOUBLE_COLORLESS_ENERGY
	db  1, FLAREON2
	db  1, VAPOREON2
	db  1, PIKACHU1
	db  1, PIKACHU2
	db  1, PIKACHU3
	db  1, PIKACHU4
	db  1, FLYING_PIKACHU
	db  1, SURFING_PIKACHU1
	db  1, SURFING_PIKACHU2
	db  1, RAICHU1
	db  1, RAICHU2
	db  1, JOLTEON2
	db  2, CLEFAIRY
	db  1, CLEFABLE
	db  1, JIGGLYPUFF1
	db  2, JIGGLYPUFF2
	db  1, JIGGLYPUFF3
	db  2, WIGGLYTUFF
	db  4, EEVEE
	db  2, PROFESSOR_OAK
	db  3, BILL
	db  2, CLEFAIRY_DOLL
	db  2, SCOOP_UP
	db  1, COMPUTER_SEARCH
	db  1, PLUSPOWER
	db  1, DEFENDER
	db  3, POTION
	db  0 ; end of list

PokemonFluteCardList: ; 1b34c (6:734c)
	db  9, WATER_ENERGY
	db 12, LIGHTNING_ENERGY
	db  2, STARYU
	db  2, LAPRAS
	db  3, PIKACHU1
	db  1, RAICHU1
	db  2, MAGNEMITE1
	db  3, ELECTABUZZ2
	db  2, RATTATA
	db  1, RATICATE
	db  2, PROFESSOR_OAK
	db  4, BILL
	db  3, ENERGY_REMOVAL
	db  1, COMPUTER_SEARCH
	db  3, PLUSPOWER
	db  2, ITEM_FINDER
	db  4, GUST_OF_WIND
	db  4, POKEMON_FLUTE
	db  0 ; end of list

YellowFlashCardList: ; 1b371 (6:7371)
	db 26, LIGHTNING_ENERGY
	db  2, PIKACHU1
	db  1, PIKACHU2
	db  1, RAICHU1
	db  1, RAICHU2
	db  2, MAGNEMITE1
	db  1, MAGNEMITE2
	db  1, MAGNETON1
	db  1, MAGNETON2
	db  3, VOLTORB
	db  1, ELECTRODE1
	db  1, ELECTRODE2
	db  1, ELECTABUZZ1
	db  1, ELECTABUZZ2
	db  1, JOLTEON1
	db  1, JOLTEON2
	db  1, ZAPDOS1
	db  1, ZAPDOS2
	db  3, EEVEE
	db  1, ENERGY_RETRIEVAL
	db  2, ENERGY_REMOVAL
	db  2, POKE_BALL
	db  2, PLUSPOWER
	db  2, DEFENDER
	db  1, GUST_OF_WIND
	db  0 ; end of list

ElectricShockCardList: ; 1b3a4 (6:73a4)
	db 24, LIGHTNING_ENERGY
	db  1, DOUBLE_COLORLESS_ENERGY
	db  2, PIKACHU2
	db  1, PIKACHU3
	db  1, PIKACHU4
	db  2, RAICHU1
	db  2, MAGNEMITE1
	db  2, MAGNEMITE2
	db  2, MAGNETON1
	db  4, VOLTORB
	db  3, ELECTRODE2
	db  1, ZAPDOS2
	db  3, PORYGON
	db  2, ENERGY_RETRIEVAL
	db  2, PLUSPOWER
	db  3, DEFENDER
	db  2, ITEM_FINDER
	db  3, GUST_OF_WIND
	db  0 ; end of list

EcholocationCardList: ; 1b3c9 (6:73c9)
	db 15, GRASS_ENERGY
	db 4, RECYCLE_ENERGY
	db 4, ZUBAT
	db 4, GOLBAT
	db 4, CROBAT
	db 3, CLEFFA
	db 3, PICHU
	db 1, MAGBY
	db 4, PROFESSOR_ELM
	db 4, TEAM_ROCKETS_EVIL_DEEDS
	db 4, MASTER_BALL
	db 1, SUPER_ENERGY_RETRIEVAL
	db 2, BILLS_TELEPORTER
	db 2, MAX_REVIVE
	db 2, HEAL_POWDER
	db 3, MOOMOO_MILK
	db  0 ; end of list

InsectCollectionCardList: ; 1b3e8 (6:73e8)
	db 24, GRASS_ENERGY
	db  3, CATERPIE
	db  2, METAPOD
	db  1, BUTTERFREE
	db  3, WEEDLE
	db  2, KAKUNA
	db  1, BEEDRILL
	db  4, PARAS
	db  3, PARASECT
	db  2, VENONAT
	db  1, VENOMOTH
	db  1, SCYTHER
	db  1, PINSIR
	db  2, BILL
	db  2, POKEMON_BREEDER
	db  2, SWITCH
	db  2, POKE_BALL
	db  2, POKEDEX
	db  2, POTION
	db  0 ; end of list

JungleCardList: ; 1b40f (6:740f)
	db 25, GRASS_ENERGY
	db  1, DOUBLE_COLORLESS_ENERGY
	db  2, EKANS
	db  1, ARBOK
	db  2, ZUBAT
	db  1, GOLBAT
	db  2, ODDISH
	db  1, GLOOM
	db  1, VILEPLUME
	db  2, PARAS
	db  1, PARASECT
	db  2, VENONAT
	db  1, VENOMOTH
	db  2, BELLSPROUT
	db  1, WEEPINBELL
	db  1, VICTREEBEL
	db  1, PINSIR
	db  1, LICKITUNG
	db  1, KANGASKHAN
	db  2, BILL
	db  1, SWITCH
	db  1, POKE_BALL
	db  2, PLUSPOWER
	db  2, DEFENDER
	db  2, POTION
	db  1, FULL_HEAL
	db  0 ; end of list

GardeningCardList: ; 1b444 (6:7444)
	db 14, GRASS_ENERGY
	db 4, HOPPIP1
	db 4, SKIPLOOM1
	db 2, JUMPLUFF1
	db 2, JUMPLUFF2
	db 4, ODDISH
	db 4, GLOOM
	db 4, BELLOSSOM
	db 4, POKEMON_MARCH
	db 4, SUPER_SCOOP_UP
	db 4, MASTER_BALL
	db 4, PROFESSOR_ELM
	db  0 ; end of list

BabylutionsCardList: ; 1b46d (6:746d)
	db 7, PSYCHIC_ENERGY
	db 4, DOUBLE_COLORLESS_ENERGY
	db 4, RECYCLE_ENERGY
	db 4, CLEFFA
	db 4, CLEFAIRY
	db 4, IGGLYBUFF
	db 4, JIGGLYPUFF
	db 4, TOGEPI
	db 4, TOGETIC
	db 4, LUGIA1
	db 4, NEW_POKEDEX
	db 4, MASTER_BALL
	db 4, PROFESSOR_ELM
	db 2, THOUGHT_WAVE_MACHINE
	db 3, DOUBLE_GUST
	db  0 ; end of list

EeveelutionsCardList: ; 1b498 (6:7498)
	db 4, DARKNESS_ENERGY
	db 5, PSYCHIC_ENERGY
	db 4, RECYCLE_ENERY
	db 4, CLEFFA
	db 4, EEVEE
	db 3, ESPEON2
	db 3, UMBREON1
	db 3, PORYGON
	db 2, PORYGON2
	db 1, WOBBUFFET
	db 1, SNEASEL1
	db 4, PROFESSOR_ELM
	db 4, TEAM_ROCKETS_EVIL_DEEDS
	db 4, DOUBLE_GUST
	db 1, ENERGY_CHARGE
	db 2, MAX_REVIVE
	db 4, MASTER_BALL
	db 2, MOOMOO_MILK
	db  0 ; end of list

PsychicPowerCardList: ; 1b4b9 (6:74b9)
	db 25, PSYCHIC_ENERGY
	db  3, ABRA
	db  2, KADABRA
	db  1, ALAKAZAM
	db  2, SLOWPOKE2
	db  1, SLOWBRO
	db  1, GASTLY1
	db  2, GASTLY2
	db  1, HAUNTER1
	db  1, HAUNTER2
	db  1, GENGAR
	db  2, DROWZEE
	db  1, HYPNO
	db  1, MR_MIME
	db  1, JYNX
	db  1, MEWTWO1
	db  1, MEW3
	db  1, CLEFAIRY
	db  1, CLEFABLE
	db  1, SNORLAX
	db  2, PROFESSOR_OAK
	db  1, POKEMON_TRADER
	db  1, POKEMON_BREEDER
	db  2, SWITCH
	db  1, POKEMON_CENTER
	db  2, PLUSPOWER
	db  1, DEVOLUTION_SPRAY
	db  0 ; end of list

DreamEaterHaunterCardList: ; 1b40f (6:740f)
	db  7, GRASS_ENERGY
	db 17, PSYCHIC_ENERGY
	db  3, ZUBAT
	db  2, GOLBAT
	db  4, GASTLY1
	db  1, HAUNTER1
	db  2, HAUNTER2
	db  2, GENGAR
	db  3, DROWZEE
	db  2, HYPNO
	db  2, JIGGLYPUFF3
	db  2, MEOWTH2
	db  2, PROFESSOR_OAK
	db  2, BILL
	db  2, ENERGY_RETRIEVAL
	db  1, SUPER_ENERGY_RETRIEVAL
	db  2, SWITCH
	db  1, COMPUTER_SEARCH
	db  3, REVIVE
	db  0 ; end of list

ScavengingSlowbroCardList: ; 1b517 (6:7517)
	db 23, PSYCHIC_ENERGY
	db  4, SLOWPOKE2
	db  3, SLOWBRO
	db  3, JYNX
	db  2, MEWTWO1
	db  2, MEW3
	db  2, JIGGLYPUFF2
	db  2, JIGGLYPUFF3
	db  2, EEVEE
	db  2, ENERGY_RETRIEVAL
	db  3, ENERGY_REMOVAL
	db  2, PLUSPOWER
	db  3, DEFENDER
	db  3, POTION
	db  4, RECYCLE
	db  0 ; end of list

CambrianHustleCardList: ; 1b536 (6:7536)
	db 10, WATER_ENERGY
	db 7, FIGHTING_ENERGY
	db 4, KABUTO
	db 4, OMANYTE
	db 2, KABUTOPS
	db 1, OMASTAR
	db 4, WOOPER2
	db 4, QUAGSIRE1
	db 4, FOSSIL_EGG
	db 4, ENERGY_AMPLIFIER
	db 4, SUPER_SCOOPUP
	db 4, MAX_REVIVE
	db 2, HYPER_DEVOLUTION_SPRAY
	db 3, ENERGY_ARK
	db 3, PROFESSOR_ELM
	db  0 ; end of list

PredatorCardList: ; 1b55f (6:755f)
	db 4, METAL_ENERGY
	db 4, RECYCLE_ENERGY
	db 3, DOUBLE_COLORLESS_ENERGY
	db 4, CLEFFA
	db 3, HOOTHOOT
	db 3, NOCTOWL
	db 2, ONIX
	db 2, STEELIX
	db 2, IGGLYBUFF
	db 4, MASTER_BALL
	db 4, TEAM_ROCKETS_EVIL_DEEDS
	db 3, POKEGEAR
	db 3, ENERGY_CHARGE
	db 3, DOUBLE_GUST
	db 4, PROFESSOR_ELM
	db 2, MOOMOO_MILK
	db 2, MAX_REVIVE
	db 2, BILLS_TELEPORTER
	db 2, NEW_POKEDEX
	db 2, THOUGHT_WAVE_MACHINE
	db 2, MARY
	db  0 ; end of list

NoRetreatCardList: ; 1b57e (6:757e)
	db 15, GRASS_ENERGY
	db 4, DARKNESS_ENERGY
	db 4, SPINARAK2
	db 3, ARIADOS
	db 4, YANMA
	db 4, MURKROW1
	db 4, SNEASEL2
	db 2, ELEKID
	db 4, EEVEE
	db 3, UMBREON2
	db 4, DOUBLE_GUST
	db 4, MASTER_BALL
	db 4, THOUGHT_WAVE_MACHINE
	db 3, BILLS_MACHINE
	db 1, ROCKETS_EVIL_DEEDS
	db  0 ; end of list

ScienceCorpsCardList: ; 1b59d (6:759d)
	db 26, GRASS_ENERGY
	db  2, EKANS
	db  1, ARBOK
	db  2, NIDORANF
	db  1, NIDORINA
	db  1, NIDOQUEEN
	db  3, NIDORANM
	db  2, NIDORINO
	db  1, NIDOKING
	db  2, ZUBAT
	db  1, GOLBAT
	db  2, GRIMER
	db  1, MUK
	db  2, KOFFING
	db  1, WEEZING
	db  2, MEOWTH2
	db  1, PERSIAN
	db  1, PROFESSOR_OAK
	db  1, BILL
	db  1, POKEMON_TRADER
	db  1, POKEMON_BREEDER
	db  1, POTION
	db  1, FULL_HEAL
	db  1, MAINTENANCE
	db  1, GAMBLER
	db  1, RECYCLE
	db  0 ; end of list

BlisseyStallCardList: ; 1b5d2 (6:75d2)
	db 7, GRASS_ENERGY
	db 4, DOUBLE_COLORLESS_ENERGY
	db 4, METAL_ENERGY
	db 4, ONIX
	db 3, STEELIX
	db 4, SCYTHER
	db 4, SCIZOR
	db 4, SKARMORY1
	db 4, CHANSEY
	db 4, BLISSEY
	db 4, PROFESSOR_ELM
	db 4, DOUBLE_GUST
	db 4, ENERGY_ARK
	db 3, OLD_ROD
	db 3, MOOMOO_MILK
	db  0 ; end of list

OvertideCardList: ; 1b5f3 (6:75f3)
	db 10, WATER_ENERGY
	db 6, LIGHTNING_ENERGY
	db 6, FIGHTING_ENERGY
	db 4, CHINCHOU1
	db 4, LANTURN1
	db 4, KABUTO
	db 4, KABUTOPS
	db 4, CORSOLA
	db 2, STANTLER1
	db 4, DUNSPARCE
	db 4, ENERGY_ARK
	db 2, ENERGY_AMPLIFIER
	db 4, PROFESSOR_ELM
	db 2, DOUBLE_GUST
	db 3, POKEMON_BREEDER_FIELDS
	db 2, SUPER_ROD
	db 3, BILLS_TELEPORTER
	db 2, MARY
	db  0 ; end of list

ExcavationCardList: ; 1b616 (6:7616)
	db 5, FIGHTING_ENERGY
	db 4, METAL_ENERGY
	db 4, RECYCLE_ENERGY
	db 4, CLEFFA
	db 3, KABUTO
	db 3, KABUTOPS
	db 3, ONIX
	db 3, STEELIX
	db 2, AERODACTYL
	db 4, PROFESSOR_ELM
	db 4, FOSSIL_EGG
	db 3, ENERGY_CHARGE
	db 2, DOUBLE_GUST
	db 4, MASTER_BALL
	db 4, TEAM_ROCKETS_EVIL_DEEDS
	db 4, HEAL_POWDER
	db 4, DOUBLE_GUST
	db  0 ; end of list

ReplaceEmAllCardList: ; 1b63d (6:763d)
	db 24, FIRE_ENERGY
	db  4, VULPIX
	db  2, NINETALES1
	db  1, NINETALES2
	db  4, GROWLITHE
	db  1, ARCANINE1
	db  1, ARCANINE2
	db  4, PIDGEY
	db  3, PIDGEOTTO
	db  1, PIDGEOT1
	db  1, PIDGEOT2
	db  3, DODUO
	db  2, DODRIO
	db  2, PROFESSOR_OAK
	db  2, IMPOSTER_PROFESSOR_OAK
	db  2, LASS
	db  3, GUST_OF_WIND
	db  0 ; end of list

ChariSaurCardList: ; 1b660 (6:7660)
	db 12, GRASS_ENERGY
	db 10, FIRE_ENERGY
	db  4, BULBASAUR
	db  3, IVYSAUR
	db  2, VENUSAUR2
	db  4, CHARMANDER
	db  3, CHARMELEON
	db  2, CHARIZARD
	db  3, FLAREON1
	db  4, EEVEE
	db  2, BILL
	db  3, POKEMON_TRADER
	db  3, POKEMON_BREEDER
	db  2, ENERGY_RETRIEVAL
	db  1, ENERGY_REMOVAL
	db  2, POTION
	db  0 ; end of list

TrafficLightCardList: ; 1b681 (6:7681)
	db 10, FIRE_ENERGY
	db  8, WATER_ENERGY
	db  8, LIGHTNING_ENERGY
	db  3, CHARMANDER
	db  2, CHARMELEON
	db  3, PONYTA
	db  2, RAPIDASH
	db  2, FLAREON1
	db  2, VAPOREON1
	db  2, PIKACHU1
	db  3, VOLTORB
	db  2, ELECTRODE2
	db  2, JOLTEON1
	db  4, EEVEE
	db  2, ENERGY_SEARCH
	db  2, SWITCH
	db  3, PLUSPOWER
	db  0 ; end of list

FirePokemonCardList: ; 1b6a4 (6:76a4)
	db 24, FIRE_ENERGY
	db  2, DOUBLE_COLORLESS_ENERGY
	db  3, CHARMANDER
	db  2, CHARMELEON
	db  1, CHARIZARD
	db  3, VULPIX
	db  1, NINETALES1
	db  1, NINETALES2
	db  2, GROWLITHE
	db  1, ARCANINE2
	db  2, PONYTA
	db  1, RAPIDASH
	db  1, MAGMAR1
	db  1, MAGMAR2
	db  1, FLAREON1
	db  1, FLAREON2
	db  1, MOLTRES1
	db  3, EEVEE
	db  1, PROFESSOR_OAK
	db  2, BILL
	db  1, POKEMON_TRADER
	db  1, POKEMON_BREEDER
	db  1, ENERGY_RETRIEVAL
	db  1, SUPER_ENERGY_RETRIEVAL
	db  1, SWITCH
	db  1, GUST_OF_WIND
	db  0 ; end of list

DamageVariationCardList: ; 1b6d9 (6:76d9)
	db 12, FIGHTING_ENERGY
	db 4, DOUBLE_COLORLESS_ENERGY
	db 4, RECYCLE_ENERGY
	db 3, GLIGAR
	db 4, SWINUB2
	db 3, PILOSWINE2
	db 2, SENTRET2
	db 2, FURRET
	db 4, DUNSPARCE
	db 4, TEDDIURSA
	db 3, URSARING
	db 4, STANTLER1
	db 4, DELIBIRD
	db 3, PROFESSOR_ELM
	db 4, NEW_POKEDEX
	db 3, THOUGHT_WAVE_MACHINE
	db 2, TEAM_ROCKETS_EVIL_DEEDS
	db 3, MASTER_BALL
	db  0 ; end of list

CyndaquilAndFriendsCardList: ; 1b702 (6:7702)
	db 10, FIRE_ENERGY
	db 8, LIGHTNING_ENERGY
	db 6, FIGHTING_ENERGY
	db 2, CYNDAQUIL2
	db 1, QUILAVA1
	db 1, TYPHLOSION1
	db 2, SLUGMA
	db 2, HOUNDOUR1
	db 1, HOUNDOOM1
	db 1, MAGMAR
	db 1, ELECTABUZZ
	db 2, PIKACHU
	db 1, RAICHU
	db 1, RAIKOU2
	db 2, PHANPY	
	db 1, DONPHAN
	db 1, GEODUDE
	db 1, GRAVELER
	db 2, SENTRET1
	db 1, FURRET
	db 1, SNUBBULL1
	db 2, MAGNEMITE
	db 1, MAGNETON
	db 2, HEAL_POWDER
	db 1, MASTER_BALL
	db 1, PROFESSOR_ELM
	db 1, DOUBLE_GUST
	db 2, MAGNIFIER
	db 1, MAX_REVIVE
	db 1, NEW_POKEDEX
	db  0 ; end of list

TotodileAndFriendsCardList: ; 1b73d (6:773d)
	db 11, WATER_ENERGY
	db 6, FIGHTING_ENERGY
	db 8, PSYCHIC_ENERGY
	db 2, TOTODILE2
	db 1, CROCONAW2
	db 1, FERALIGATR1
	db 2, MARILL
	db 1, AZUMARILL
	db 1, STARYU
	db 1, STARMIE
	db 1, GOLDEEN
	db 1, SEAKING
	db 1, MANTINE
	db 2, NATU1
	db 1, XATU2
	db 2, SMOOCHUM
	db 1, JYNX
	db 2, GEODUDE
	db 1, GRAVELER
	db 1, HITMONTOP
	db 2, SENTRET
	db 1, FURRET
	db 1, ONIX
	db 2, HEAL_POWDER
	db 1, MASTER_BALL
	db 1, PROFESSOR_ELM
	db 1, DOUBLE_GUST
	db 2, MAGNIFIER
	db 1, MAX_REVIVE
	db 1, NEW_POKEDEX
	db  0 ; end of list

ChikoritaAndFriendsCardList: ; 1b780 (6:7780)
	11, GRASS_ENERGY
	3, FIRE_ENERGY
	9, WATER_ENERGY
	2, CHIKORITA1
	1, BAYLEEF2
	1, MEGANIUM2
	2, TEDDIURSA
	1, URSARING
	2, CATERPIE
	1, METAPOD
	2, SUNKERN
	1, SUNFLORA
	2, PARAS
	1, PARASECT
	2, GOLDEEN
	1, SEAKING
	1, MAGBY
	1, MAGMAR
	1, STANTLER1
	2, MARILL
	1, AZUMARILL
	1, AIPOM1
	1, DUNSPARCE
	1, YANMA
	2, HEAL_POWDER
	1, MASTER_BALL
	1, PROFESSOR_ELM
	1, DOUBLE_GUST
	2, MAGNIFIER
	1, MAX_REVIVE
	1, NEW_POKEDEX
	db  0 ; end of list

PsychicMachampCardList: ; 1b7b (6:77b)
	db 12, FIGHTING_ENERGY
	db 12, PSYCHIC_ENERGY
	db  2, DIGLETT
	db  1, DUGTRIO
	db  2, MACHOP
	db  1, MACHOKE
	db  1, MACHAMP
	db  1, ONIX
	db  1, HITMONLEE
	db  1, HITMONCHAN
	db  2, ABRA
	db  1, KADABRA
	db  1, ALAKAZAM
	db  2, GASTLY1
	db  1, HAUNTER2
	db  1, GENGAR
	db  1, MR_MIME
	db  1, JYNX
	db  1, MEW3
	db  2, PIDGEY
	db  1, PIDGEOTTO
	db  1, PIDGEOT2
	db  2, RATTATA
	db  1, RATICATE
	db  1, PROFESSOR_OAK
	db  2, BILL
	db  1, SWITCH
	db  1, GUST_OF_WIND
	db  2, POTION
	db  1, FULL_HEAL
	db  0 ; end of list

WaterBeetleCardList: ; 1b7fc (6:77fc)
	db 14, GRASS_ENERGY
	db 10, WATER_ENERGY
	db  2, WEEDLE
	db  1, KAKUNA
	db  1, BEEDRILL
	db  2, NIDORANM
	db  1, NIDORINO
	db  1, NIDOKING
	db  2, BELLSPROUT
	db  1, WEEPINBELL
	db  1, VICTREEBEL
	db  1, SCYTHER
	db  2, POLIWAG
	db  1, POLIWHIRL
	db  1, POLIWRATH
	db  2, KRABBY
	db  1, KINGLER
	db  2, MAGIKARP
	db  1, GYARADOS
	db  1, LAPRAS
	db  1, ARTICUNO1
	db  1, LICKITUNG
	db  1, KANGASKHAN
	db  1, TAUROS
	db  1, PROFESSOR_OAK
	db  2, BILL
	db  1, ENERGY_RETRIEVAL
	db  1, ENERGY_SEARCH
	db  1, SWITCH
	db  1, PLUSPOWER
	db  1, FULL_HEAL
	db  0 ; end of list

LegendaryEnteiCardList: ; 1b83b (6:783b)
	db 18 FIRE_ENERGY
	db 2, METAL_ENERGY
	db 4, SLUGMA
	db 4, MAGCARGO
	db 4, ENTEI2
	db 2, CLEFFA
	db 4, PROFESSOR_ELM
	db 4, BILLS_TELEPORTER
	db 4, MASTER_BALL
	db 4, DOUBLE_GUST
	db 4, SUPER_SCOOP_UP
	db 2, ENERGY_ARK
	db 2, ENERGY_CHARGE
	db 2, POKEGEAR
	db  0 ; end of list

LegendaryRaikouCardList: ; 1b860 (6:7860)
	db 17, LIGHTNING_ENERGY
	db 4, DARKNESS_ENERGY
	db 4, RAIKOU1
	db 2, CLEFFA
	db 2, ELEKID
	db 4, SNEASEL1
	db 2, MURKROW1
	db 4, PROFESSOR_ELM
	db 2, TEAM_ROCKETS_EVIL_DEEDS
	db 4, HEAL_POWDER
	db 2, MAGNIFIER
	db 4, NEW_POKEDEX
	db 4, MARY
	db 3, MASTER_BALL
	db  0 ; end of list

LegendarySuicuneCardList: ; 1b87f (6:787f)
	db 22, WATER_ENERGY
	db 4, TOTODILE1
	db 4, CROCONAW2
	db 3, FERALIGATR2
	db 4, SUICUNE1
	db 2, CLEFFA
	db 1, MAGBY
	db 4, PROFESSOR_ELM
	db 4, DOUBLE_GUST
	db 4, ENERGY_ARK
	db 4, MOOMOO_MILK
	db 2, THOUGHT_WAVE_MACHINE
	db 2, OLD_ROD
	db  0 ; end of list

LugiaAndHoOhCardList: ; 1b89c (6:789c)
	db 7, FIRE_ENERGY
	db 7, WATER_ENERGY
	db 7, LIGHTNING_ENERGY
	db 3, PSYCHIC_ENERGY
	db 3, FIGHTING_ENERGY
	db 4, LUGIA2
	db 4, HO-OH2
	db 4, PORYGON
	db 3, PORYGON_TWO
	db 1, SUICUNE1
	db 1, ENTEI2
	db 1, RAIKOU1
	db 2, ENEGY_AMPLIFIER
	db 2, SUPER_ENERGY_RETRIEVAL
	db 2, ENERGY_ARK
	db 4, PROFESSOR_ELM
	db 2, THOUGHT_WAVE_MACHINE
	db 2, TEAM_ROCKETS_EVIL_DEEDS
	db 1, MOOMOO_MILK
	db  0 ; end of list

MysteriousPokemonCardList: ; 1b8c3 (6:78c3)
	db 12, GRASS_ENERGY
	db 14, PSYCHIC_ENERGY
	db  4, BULBASAUR
	db  3, IVYSAUR
	db  2, VENUSAUR1
	db  2, SCYTHER
	db  4, ABRA
	db  3, KADABRA
	db  2, ALAKAZAM
	db  2, MR_MIME
	db  1, MEW1
	db  2, MEW2
	db  1, PROFESSOR_OAK
	db  2, BILL
	db  2, POKEMON_BREEDER
	db  1, ENERGY_REMOVAL
	db  2, SWITCH
	db  1, POKEMON_CENTER
	db  0 ; end of list
