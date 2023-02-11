; each Auto Deck Machine has 5 slots for deck configurations
; each entry in an Auto Deck Machine consists of a card list
; (see data/auto_deck_card_lists.asm) and two text IDs
; for the corresponding deck name and description/flavor text

auto_deck: MACRO
	dw \1 ; deck card list
	tx \2 ; deck name text ID
	tx \3 ; deck description text ID
ENDM

AutoDeckMachineEntries: ; 1b8e8 (6:78e8)
; Fighting Auto Deck Machine
	auto_deck AllFightingPokemonCardList,   AllFightingPokemonText,   AllFightingPokemonDescriptionText
	auto_deck BenchAttackCardList,          BenchAttackText,          BenchAttackDescriptionText
	auto_deck BattleContestCardList,        BattleContestText,        BattleContestDescriptionText
	auto_deck HeatedBattleCardList,         HeatedBattleText,         HeatedBattleDescriptionText
	auto_deck RiversideCardList,          	RiversideDeckName,        RiversideDescriptionText

; Rock Auto Deck Machine
	auto_deck SqueakingMouseCardList,       SqueakingMouseText,       SqueakingMouseDescriptionText
	auto_deck GreatQuakeCardList,           GreatQuakeText,           GreatQuakeDescriptionText
	auto_deck BoneAttackCardList,           BoneAttackText,           BoneAttackDescriptionText
	auto_deck CephalopodCardList,           CephalopodDeckName,           CephalopodDescriptionText
	auto_deck AuguryCardList,          		AuguryDeckDeckName,        	  AuguryDescriptionText
	
; Water Auto Deck Machine
	auto_deck BlueWaterCardList,            BlueWaterText,            BlueWaterDescriptionText
	auto_deck OnTheBeachCardList,           OnTheBeachText,           OnTheBeachDescriptionText
	auto_deck ParalyzeCardList,             ParalyzeText,             ParalyzeDescriptionText
	auto_deck EnergyRemovalCardList,        EnergyRemovalText,        EnergyRemovalDescriptionText
	auto_deck MemoriesOfYouthCardList,      MemoriesOfYouthDeckName,      MemoriesOfYouthDescriptionText
	
; Lightning Auto Deck Machine
	auto_deck CutePokemonCardList,          CutePokemonText,          CutePokemonDescriptionText
	auto_deck PokemonFluteCardList,         PokemonFluteText,         PokemonFluteDescriptionText
	auto_deck YellowFlashCardList,          YellowFlashText,          YellowFlashDescriptionText
	auto_deck ElectricShockCardList,        ElectricShockText,        ElectricShockDescriptionText
	auto_deck EcholocationCardList,  		EcholocationDeckName,	  EcholocationDescriptionText
	
; Grass Auto Deck Machine
	auto_deck InsectCollectionCardList,     InsectCollectionText,     InsectCollectionDescriptionText
	auto_deck JungleCardList,               JungleText,               JungleDescriptionText
	auto_deck GardeningCardList,         	GardeningDeckName,        GardeningDescriptionText
	auto_deck BabylutionsCardList,          BabylutionsDeckName,      BabylutionsDescriptionText
	auto_deck EeveelutionsCardList,         EeveelutionsDeckName,     EeveelutionsDescriptionText
	
; Psychic Auto Deck Machine
	auto_deck PsychicPowerCardList,         PsychicPowerText,         PsychicPowerDescriptionText
	auto_deck DreamEaterHaunterCardList,    DreamEaterHaunterText,    DreamEaterHaunterDescriptionText
	auto_deck ScavengingSlowbroCardList,    ScavengingSlowbroText,    ScavengingSlowbroDescriptionText
	auto_deck CambrianHustleCardList,       CambrianHustleDeckName,   CambrianHustleDescriptionText
	auto_deck PredatorCardList,     		PredatorDeckName,      	  PredatorDescriptionText
	
; Science Auto Deck Machine
	auto_deck NoRetreatCardList,      		NoRetreatDeckName,        NoRetreatDescriptionText
	auto_deck ScienceCorpsCardList,         ScienceCorpsText,         ScienceCorpsDescriptionText
	auto_deck BlisseyStallCardList,         BlisseyStallDeckName,     BlisseyStallDescriptionText
	auto_deck OvertideList,               	OvertideDeckName,         OvertideDescriptionText
	auto_deck ExcavationCardList, 		    ExcavationDeckName, 	  ExcavationDescriptionText
	
; Fire Auto Deck Machine
	auto_deck ReplaceEmAllCardList,         ReplaceEmAllText,         ReplaceEmAllDescriptionText
	auto_deck ChariSaurCardList,            ChariSaurText,            ChariSaurDescriptionText
	auto_deck TrafficLightCardList,         TrafficLightText,         TrafficLightDescriptionText
	auto_deck FirePokemonCardList,          FirePokemonDeckText,      FirePokemonDescriptionText
	auto_deck DamageVariationCardList,      DamageVariationDeckName,  DamageVariationDescriptionText

; Auto Deck Machine
	auto_deck CyndaquilAndFriendsCardList,  CyndaquilAndFriendsDeckName,  CyndaquilAndFriendsDescriptionText
	auto_deck TotodileAndFriendsCardList,   TotodileAndFriendsDeckName,   TotodileAndFriendsDescriptionText
	auto_deck ChikoritaAndFriendsCardList,  ChikoritaAndFriendsDeckName,  ChikoritaAndFriendsDescriptionText
	auto_deck PsychicMachampCardList,       PsychicMachampText,       	  PsychicMachampDescriptionText
	auto_deck WaterBeetleCardList,          WaterBeetleText,          	  WaterBeetleDescriptionText
	
; Legendary Auto Deck Machine
	auto_deck LegendaryEnteiCardList,       LegendaryEnteiDeckName,      LegendaryEnteiDescriptionText
	auto_deck LegendaryRaikouCardList,      LegendaryRaikouDeckName,     LegendaryRaikouDescriptionText
	auto_deck LegendarySuicuneCardList,     LegendarySuicuneDeckName,    LegendarySuicuneDescriptionText
	auto_deck LugiaAndHoOhCardList,   		LugiaAndHoOhDeckName,   	 LugiaAndHoOhDescriptionText
	auto_deck MysteriousPokemonCardList,    MysteriousPokemonText,   	 MysteriousPokemonDescriptionText
