MACRO ai_trainer_card_logic
	db \1 ; AI_TRAINER_CARD_PHASE_* constant
	db \2 ; ID of trainer card
	dw \3 ; function for AI decision to play card
	dw \4 ; function for AI playing the card
ENDM

AITrainerCardLogic: ; 20000 (8:4000)
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_07, HEAL_POWDER,            AIDecide_Potion1,                        AIPlay_Potion
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_10, HEAL_POWDER,            AIDecide_Potion2,                        AIPlay_Potion
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_08, MOOMOO_MILK,            AIDecide_SuperPotion1,                   AIPlay_SuperPotion
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_11, MOOMOO_MILK,            AIDecide_SuperPotion2,                   AIPlay_SuperPotion
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_07, GUST_OF_WIND,           AIDecide_GustOfWind,                     AIPlay_GustOfWind
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_10, GUST_OF_WIND,           AIDecide_GustOfWind,                     AIPlay_GustOfWind
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_04, MARY,                   AIDecide_Bill,                           AIPlay_Bill
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_05, ENERGY_REMOVAL,         AIDecide_EnergyRemoval,                  AIPlay_EnergyRemoval
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_05, THOUGHT_WAVE_MACHINE,   AIDecide_SuperEnergyRemoval,             AIPlay_SuperEnergyRemoval
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_07, POKEMON_BREEDER,        AIDecide_PokemonBreeder,                 AIPlay_PokemonBreeder
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_15, PROFESSOR_ELM,          AIDecide_ProfessorOak,                   AIPlay_ProfessorOak
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_11, SUPER_ENERGY_RETRIEVAL, AIDecide_SuperEnergyRetrieval,           AIPlay_SuperEnergyRetrieval
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_12, ENERGY_ARK,          	AIDecide_EnergySearch,                   AIPlay_EnergySearch
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_03, NEW_POKEDEX,            AIDecide_Pokedex,                        AIPlay_Pokedex
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_07, HEAL_POWDER,            AIDecide_FullHeal,                       AIPlay_FullHeal
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_10, SUPER_SCOOP_UP,         AIDecide_ScoopUp,                        AIPlay_ScoopUp
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_03, OLD_ROD,                AIDecide_Recycle,                        AIPlay_Recycle
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_04, SUPER_ROD,              AIDecide_ItemFinder,                     AIPlay_ItemFinder
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_05, MAX_REVIVE,             AIDecide_Revive,                         AIPlay_Revive
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_05, MYSTERIOUS_FOSSIL,      AIDecide_ClefairyDollOrMysteriousFossil, AIPlay_ClefairyDollOrMysteriousFossil
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_02, POKE_BALL,              AIDecide_Pokeball,                       AIPlay_Pokeball
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_02, COMPUTER_SEARCH,        AIDecide_ComputerSearch,                 AIPlay_ComputerSearch
	ai_trainer_card_logic AI_TRAINER_CARD_PHASE_02, POKEMON_TRADER,         AIDecide_PokemonTrader,                  AIPlay_PokemonTrader
	db $ff
