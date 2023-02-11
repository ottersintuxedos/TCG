EffectCommands: ; 186f7 (6:46f7)
; Each attack has a two-byte effect pointer (attack's 7th param) that points to one of these structures.
; Similarly, trainer cards have a two-byte pointer (7th param) to one of these structures, which determines the card's function.
; Energy cards also point to one of these, but their data is just $00.
;	db EFFECTCMDTYPE_* ($01 - $0a)
;	dw Function
;	...
;	db $00

; Commands are associated to a time or a scope (EFFECTCMDTYPE_*) that determines when their function is executed during the turn.
; - EFFECTCMDTYPE_INITIAL_EFFECT_1: Executed right after attack or trainer card is used. Bypasses Smokescreen and Sand Attack effects.
; - EFFECTCMDTYPE_INITIAL_EFFECT_2: Executed right after attack, Pokemon Power, or trainer card is used.
; - EFFECTCMDTYPE_DISCARD_ENERGY: For attacks or trainer cards that require putting one or more attached energy cards into the discard pile.
; - EFFECTCMDTYPE_REQUIRE_SELECTION: For attacks, Pokemon Powers, or trainer cards requiring the user to select a card (from e.g. play area screen or card list).
; - EFFECTCMDTYPE_BEFORE_DAMAGE: Effect command of an attack executed prior to the damage step. For trainer card or Pokemon Power, usually the main effect.
; - EFFECTCMDTYPE_AFTER_DAMAGE: Effect command executed after the damage step.
; - EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN: For attacks that may result in the defending Pokemon being switched out. Called only for AI-executed attacks.
; - EFFECTCMDTYPE_PKMN_POWER_TRIGGER: Pokemon Power effects that trigger the moment the Pokemon card is played.
; - EFFECTCMDTYPE_AI: Used for AI scoring.
; - EFFECTCMDTYPE_AI_SELECTION: When AI is required to select a card

; Attacks that have an EFFECTCMDTYPE_REQUIRE_SELECTION also must have either an EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN or an
; EFFECTCMDTYPE_AI_SELECTION (for anything not involving switching the defending Pokemon), to handle selections involving the AI.

; Similar attack effects of different Pokemon cards all point to a different command list,
; even though in some cases their commands and function pointers match.

; Function name examples
;	PoisonEffect                     ; generic effect shared by multiple attacks.
;	Paralysis50PercentEffect         ;
;	KakunaStiffenEffect              ; unique effect from an attack known by multiple cards.
;	MetapodStiffenEffect             ;
;	AcidEffect                       ; unique effect from an attack known by a single card
;	FoulOdorEffect                   ;
;	SpitPoison_Poison50PercentEffect ; unique effect made of more than one command.
;	SpitPoison_AIEffect              ;

SpinAttackEffectCommands:
    dbw EFFECTCMDTYPE_AFTER_DAMAGE, SpinAttackEffect
    db  $00


HardenEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HardenEffect
    db  $00


HatchEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HatchEffect
    db  $00


MagicDustEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


HyperReverseEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SpikeStabEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SpikeStabEffect
    db  $00


SecretePoisonEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


TriplePoisonEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TriplePoisonEffect
	dbw EFFECTCMDTYPE_AI, TriplePoison_AIEffect
	db  $00


QuadrupleX20EffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, QuadrupleX20_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, QuadrupleX20_AIEffect
	db  $00


HideEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HideEffect
	db  $00


AbsorbEffectCommands:
    dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
    db  $00


StrangePowderEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ConfusionOrSleepEffect
	dbw EFFECTCMDTYPE_AI, StrangePowder_AIEffect
	db  $00


StickyNectarEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SweetNectarEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SweetNectar_DamageCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SweetNectar_PlayerSelection
	db  $00


FlowerDanceEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


MayInflictSleepEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MayInflictSleepEffect
    db  $00


AllergicPollenEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


InflictPoisonEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AI, Poison_AIEffect
	db  $00


ScreechEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PoisonBiteEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
    db  $00


TriggeredPoisonEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


CrossAttackEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, QuadrupleX20_MultiplierEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PlaceholderEffect
    db  $00


FuryCutterEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


DeflectorEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DeflectorEffect
    db  $00


GrowlEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GrowlEffect
    db  $00


MayInflictPoisonEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AI, Poison_AIEffect
	db  $00


PollenShieldEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SweetScentEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SweetScent_DamageCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SweetScent_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SweetScent_HealEffect
	db  $00


DoubleAttackX40EffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoubleAttackX40_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, DoubleAttackX40_AIEffect
    db  $00


HerbalScentEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


MayInflictParalysisEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
    db  $00


WildGrowthEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


InflictSleepEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SleepEffect
    db  $00


MayInflictConfusionEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Confusion50PercentEffect
    db  $00


QuadrupleAttackX10EffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, QuadrupleAttackX10_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, QuadrupleAttackX10_AIEffect
    db  $00


BatonPassEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


ScaryFaceEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SpiderWebEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SproutEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Sprout_CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sprout_PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Sprout_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Sprout_AISelectEffect
	db  $00


LeechSeedEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LeechSeedEffect
    db  $00


EvolutionarySporeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


GrowthEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


MegaDrainEffectCommands:
    dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
    db  $00


PetalDanceEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PetalDance_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, PetalDance_AIEffect
	db  $00


ShockwaveEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SwiftEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


BurstEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


WithdrawEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, WithdrawEffect
    db  $00


FinalBlowEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


MayDoNothingEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MayDoNothingEffect
    dbw EFFECTCMDTYPE_AI, Megahorn_AIEffect
	db  $00


PsychicLeafEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SputterEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


LeerEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LeerEffect
    db  $00


FireworksEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


QuickAttackEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, QuickAttack_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, QuickAttack_AIEffect
    db  $00


EmberEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Ember_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Ember_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, Ember_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	db  $00


FireWindEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SmokescreenEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmokescreenEffect
    db  $00


CharEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


FireRechargeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


FlameBurstEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


FireBoostEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


FlameWheelEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PreventRetreatEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PreventRetreatEffect
    db  $00


MagmaPoolEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


LavaFlowEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


CollectFireEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


LegendaryBodyEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


MegaFlameEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


HowlEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SearingFlamesEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


StokeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SacredFireEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


BellyDrumEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PoliwhirlWaterGunEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoliwhirlWaterGunEffect
	dbw EFFECTCMDTYPE_AI, PoliwhirlWaterGunEffect
    db  $00


FrogSongEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


DoubleAttackX10EffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoubleAttackX10_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, DoubleAttackX10_AIEffect
    db  $00


TenPlus10AttackEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TenPlus10Attack_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, TenPlus10Attack_AIEffect
    db  $00


HornSwipeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


FinSlapEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


MudSplashEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


AgilityEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AgilityEffect
    db  $00


DragonTornadoEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DragonTornado_AssertPokemonInBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DragonTornado_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DragonTornado_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, DragonTornado_GetBenchPokemonWithLowestHP
	db  $00


GeneticMemoryEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


TwisterEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


StrangeDanceEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StrangeDance_DamageBoostEffect
    dbw EFFECTCMDTYPE_AI, StrangeDance_AIEffect
    db  $00


ReviveFriendsEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


WorkTogetherEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


HydrocutterEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


RageEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rage_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Rage_AIEffect
    db  $00


TripleAttackX10EffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TripleAttackX10_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, TripleAttackX10_AIEffect
    db  $00


JawChompEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SweepAwayEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


BeserkEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


DownpourEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


RiptideEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


AmnesiaEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Amnesia_CheckAttacks
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Amnesia_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Amnesia_DisableEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Amnesia_AISelectEffect
	db  $00


DoubleAttackX20EffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoubleAttackX20_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, DoubleAttackX20_AIEffect
    db  $00


SlimeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmokescreenEffect ; Need to change for anim
    db  $00


EarthquakeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EarthquakeEffect
    db  $00


WhirlpoolEffectCommands:
    dbw EFFECTCMDTYPE_AFTER_DAMAGE, Whirlpool_DiscardEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Whirlpool_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Whirlpool_AISelectEffect
	db  $00


DefenseCurlEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DefenseCurlEffect
    db  $00


BubbleBombEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BubbleBomb_ParalysisEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, BubbleBomb_RecoilEffect
	db  $00


GigasparkEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GigasparkEffect
    db  $00


SharphooterEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


OctazookaEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


RecoverEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Recover_CheckEnergyHP
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Recover_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Recover_HealEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, Recover_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Recover_AISelectEffect
	db  $00


DoubleAttackX30EffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoubleAttackX30_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, DoubleAttackX30_AIEffect
    db  $00


FreezeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


BlizzardEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Blizzard_BenchDamage50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Blizzard_BenchDamageEffect
	db  $00


NeedleStormEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, NeedleStorm_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, NeedleStorm_AIEffect
	db  $00


CrystalBodyEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


AuroraWaveEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


CrystalWaveEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


ZzzapEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


LightningStrikeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PlayfulPunchEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


StaticElectricityEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00

ThunderJoltEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ThunderJolt_Recoil50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ThunderJolt_RecoilEffect
	db  $00


DischargeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


ElectricCurrentEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


TailShockEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TailShockEffect
    db  $00


AttractCurrentEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


GigavoltEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Gigavolt_DamageBoostEffect
    dbw EFFECTCMDTYPE_AI, Gigavolt_AIEffect
    db  $00


FlailEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Flail_HPCheck
	dbw EFFECTCMDTYPE_AI, Flail_AIEffect
	db  $00


LanturnsHydroelectricPowerEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SubmergeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


LightningBurstEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


LightningTackleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LightningTackle_Recoil50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, LightningTackle_RecoilEffect
	db  $00


RockTumbleEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SubmissionEffectCommands:
    dbw EFFECTCMDTYPE_AFTER_DAMAGE, SubmissionEffect
    db  $00


ReviveFossilEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SqueezeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Gigavolt_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, QuickAttack_AIEffect
	db  $00


SpikeBarrageEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PrehitoricMemoryEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


MimicEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


HardShellEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


ToxicSalivaEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ToxicSaliva_DoublePoisonEffect
	dbw EFFECTCMDTYPE_AI, ToxicSaliva_AIEffect
	db  $00


TakeDownEffectCommands:
    dbw EFFECTCMDTYPE_AFTER_DAMAGE, TakeDownEffect
    db  $00


NapEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Nap_DamageCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Nap_HealEffect
	db  $00


HighSpeedChargeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


EndureEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


RapidSpinEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


TripleAttackX30EffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TripleAttackX30_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, TripleAttackX30_AIEffect
    db  $00


DustDevilEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


CoreStreamEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SlowpokeWaterGunEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SlowpokeWaterGunEffect
    dbw EFFECTCMDTYPE_AI, SlowpokeWaterGunEffect
    db  $00


MindGamesEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00

MindBlastEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MindBlast_DamageBoostEffect
    dbw EFFECTCMDTYPE_AI, MindBlast_AIEffect
    db  $00


PsykissEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


TelekinesisEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


HypnoProphecyEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Prophecy_CheckDeck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Prophecy_ReorderDeckEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Prophecy_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Prophecy_AISelectEffect
	db  $00


EnergyCycleEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PsychicEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Psychic_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Psychic_AIEffect
	db  $00


PerishSongEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


CounterEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


AerowingEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


TimeTravelEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PsychicDamageEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


FeintAttackEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PursuitEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


BeatUpEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SwipeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PlunderEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


CrunchEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


FlamethrowerEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Flamethrower_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Flamethrower_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, Flamethrower_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Flamethrower_AISelectEffect
	db  $00


DarkFlameEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


MeanLookEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


CallForFamilyEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, MurkrowCallForFamily_CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MurkrowCallForFamily_PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, MurkrowCallForFamily_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, MurkrowCallForFamily_AISelectEffect
	db  $00


FlockAttackEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


TrampleEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


LockonEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


ElectricBoltEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


ElectromagneticPowerEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PlasmaEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SpikesEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


TailCrushEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, QuickAttack_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, TailCrush_AIEffect
    db  $00


FalseSwipeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FalseSwipe_HalfHPEffect
	dbw EFFECTCMDTYPE_AI, FalseSwipe_AIEffect
	db  $00


SteelWingEffectCommands:
    dbw EFFECTCMDTYPE_AFTER_DAMAGE, SteelWingEffect
    db  $00


EeeeeeekEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ProfessorElmEffect
    db  $00


SquaredanceEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


GazeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


ExpandEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExpandEffect
    db  $00


EggTossEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SoftboiledEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


LeekJabEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


EnergyEvolutionEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


EnergyConverterEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


DeltaBeamEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


ScoutEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ScoutEffect
    db  $00


GlaringgazeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


SuperMetronomeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


GrabEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


RoarEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


RagingHeadbuttEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


RagingChargeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rage_DamageBoostEffect
    dbw EFFECTCMDTYPE_AFTER_DAMAGE, RagingCharge_RecoilEffect
    dbw EFFECTCMDTYPE_AI, Rage_AIEffect
    db  $00


NaptimeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


HeadpressEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


PresentEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


StompEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Stomp_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Stomp_AIEffect
	db  $00


TerrorizeEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


OverheadTossEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OverheadTossEffect
    db  $00


SketchEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SketchEffect
    db  $00


MilkDrinkEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


ElementalBlastEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


RainbowBurnEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlaceholderEffect
    db  $00


GrassEnergyEffectCommands:
    db  $00


FireEnergyEffectCommands:
    db  $00


WaterEnergyEffectCommands:
    db  $00


LightningEnergyEffectCommands:
    db  $00


FightingEnergyEffectCommands:
    db  $00


PsychicEnergyEffectCommands:
    db  $00


DarknessEnergyEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DarknessEnergyEffect
    db  $00


MetalEnergyEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MetalEnergyEffect
    db  $00


DoubleColorlessEnergyEffectCommands:
    db  $00


RecycleEnergyEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, RecycleEnergyEffect
    db  $00


MasterBallEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, MasterBall_DeckCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MasterBall_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, MasterBall_PlayerSelection
	db  $00


MaxReviveEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, MaxRevive_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, MaxRevive_HandDeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MaxRevive_PlayerDiscardHandSelection
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, MaxRevive_PlayerSelection
	db  $00


EnergyChargeEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyCharge_DiscardPileCheck
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyCharge_PlayerDiscardPileSelection
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyCharge_ShuffleIntoDeck
    db  $00


MaryEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Mary_DrawEffect
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Mary_PlayerSelection
    db  $00


PokeGearEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PokeGear_DeckCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokeGear_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PokeGear_PlayerSelection
	db  $00


SuperEnergyRetrievalEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SuperEnergyRetrieval_HandEnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SuperEnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperEnergyRetrieval_DiscardAndAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SuperEnergyRetrieval_PlayerDiscardPileSelection
	db  $00


BillsTeleporterEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BillsTeleporterEffect
    db  $00


NewPokedexEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, NewPokedex_DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, NewPokedex_OrderDeckCardsEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, NewPokedex_PlayerSelection
	db  $00


ProfessorElmEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ProfessorElmEffect
    db  $00


SuperScoopUpEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SuperScoopUp_BenchCheck
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ScoopUp_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ScoopUp_ReturnToHandEffect ; incomplete
	db  $00


DoubleGustEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DoubleGust_BenchCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoubleGust_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DoubleGust_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, DoubleGust_GetBenchPokemonWithLowestHP
	db  $00


MooMooMilkEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, MooMooMilk_DamageCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, MooMooMilk_PlayerSelection
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MooMooMilk_HealEffect
    db  $00


PokemonMarchEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PokemonMarch_CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokemonMarch_PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PokemonMarch_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, PokemonMarch_AISelectEffect
	db  $00


SuperRodEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SuperRod_DiscardPileCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperRod_AddToHandEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SuperRod_PlayerSelection
    db  $00


FossilEggEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FossilEgg_CheckDeckAndPlayArea
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FossilEgg_PutInPlayAreaEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FossilEgg_PlayerSelectEffect
    dbw EFFECTCMDTYPE_AI_SELECTION, FossilEgg_AISelectEffect
    db  $00


HyperDevolutionSprayEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, HyperDevolutionSpray_PlayAreaEvolutionCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HyperDevolutionSpray_DevolutionEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, HyperDevolutionSpray_PlayerSelection
    db  $00


EnergyArkEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyArk_DeckCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyArk_AddToHandEffect
    dbw EFFECTCMDTYPE_PLAYER_SELECTION, EnergyArk_PlayerSelection
    db  $00


PokemonBreederFieldsEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PokemonBreederFields_EvolutionCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokemonBreederFields_AddToHandEffect
    dbw EFFECTCMDTYPE_PLAYER_SELECTION, PokemonBreederFields_PlayerSelection
    dbw EFFECTCMDTYPE_AI_SELECTION, PokemonBreederFields_AISelectEffect
    db  $00


OldRodEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, OldRod_DiscardPileCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OldRod_AddToHandEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, OldRod_PlayerSelection
    db  $00


ThoughtWaveMachineEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, ThoughtWaveMachine_EnergyCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ThoughtWaveMachine_DiscardEffect
    db  $00


EnergyAmplifierEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyAmplifier_HandDeckCheck
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyAmplifier_PlayerHandSelection
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyAmplifier_AddToHandEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyAmplifier_PlayerDeckSelection
    db  $00


MagnifierEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Magnifier_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Magnfier_AttachMagnifierEffect
	db  $00


TeamRocketsEvilDeedsEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TeamRocketsEvilDeeds_ReturnAndDrawEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyAmplifier_PlayerSelection
    db  $00


HealPowderEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, HealPowder_DamageStatusCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HealPowder_Success50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HealPowder_HealDamageAndStatusEffect
	db  $00


