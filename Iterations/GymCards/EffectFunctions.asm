GraspingVineEffect: ; 2ebe8 (b:6be8)
	ldtx de, IfHeadsDraw2CardFromDeckText
	call TossCoin_BankB
	ret nc ; tails
	ldtx hl, Draw2CardFromTheDeckText
	call DrawWideTextBox_WaitForInput
	bank1call DisplayDrawTwoCardScreen
	call DrawCardFromDeck
	ret c ; empty deck
	call AddCardToHand
	call LoadCardDataToBuffer1_FromDeckIndex
	ld a, [wDuelistType]
	cp DUELIST_TYPE_PLAYER
	ret nz
	; show card on screen if it was Player
	bank1call OpenCardPage_FromHand
	ret

NidokingTumblingAttack_AIEffect: ; 2d541 (b:5541)
	ld a, (40 + 30) / 2
	lb de, 40, 70
	jp SetExpectedAIDamage

NidokingTumblingAttack_DamageBoostEffect: ; 2d549 (b:5549)
	ld hl, 30
	call LoadTxRam3
	ldtx de, DamageCheckIfHeadsPlusDamageText
	call TossCoin_BankB
	ret nc ; return if tails
	ld a, 30
	call AddToDamage
	ret

PinsirSnappingPincers_AIEffect: ; 2d541 (b:5541)
	ld a, (10 + 10) / 2
	lb de, 10, 20
	jp SetExpectedAIDamage

PinsirSnappingPincers_DamageBoostEffect: ; 2d549 (b:5549)
	ld hl, 10
	call LoadTxRam3
	ldtx de, DamageCheckIfHeadsPlusDamageText
	call TossCoin_BankB
	ret nc ; return if tails
	ld a, 10
	call AddToDamage
	ret

PoisonBuildupEffect:
    call SwapTurn
	call PoisonEffect
	call SwapTurn
	ret

SlowpokeLazyAttackEffect:
	call SwapTurn
	call SleepEffect
	call SwapTurn
	ret

SharpStinger_PoisonOrParalysisEffect:
    ldtx de, PoisonedIfHeadsParalyzedIfTailsText
	call TossCoin_BankB
	jp c, PoisonEffect
	jp ParalysisEffect

StrangePowder_ConfusionOrSleepEffect:
    ldtx de, ConfusionIfHeadsSleepIfTailsText
	call TossCoin_BankB
	jp c, ConfusionEffect
	jp SleepEffect

PoliwagHypnoticStare_ParalysisOrSleepEffect:
    ldtx de, ParalyzedIfHeadsAsleepIfTailsText
	call TossCoin_BankB
	jp c, ParalysisEffect
	jp SleepEffect

SharpStinger_AIEffect: ; 2c822 (b:4822)
	ld a, 5
	lb de, 0, 10
	jp UpdateExpectedAIDamage

FireTackle_RecoilEffect: ; 2e529 (b:6529)
	ld hl, 10
	call LoadTxRam3
	ldh a, [hTemp_ffa0]
	call DealRecoilDamageToSelf
	ret

DreamDanceEffect: ; 2c793 (b:4793)
	call SleepEffect
	call SwapTurn
	call SleepEffect
	call SwapTurn
	ret

GolduckWaterSpray_DamageBoostEffect:
	ld hl, 20
	call LoadTxRam3
	ldtx de, DamageCheckIfHeadsPlusDamageText
	call TossCoin_BankB
	ret nc ; return if tails
	ld a, 20
	call AddToDamage
	ret

GolduckWaterSpray_AIEffect:
	ld a, (20 + 20) / 2
	lb de, 20, 20
	jp SetExpectedAIDamage

; returns carry if has no damage counters.
Naptime_CheckDamage: ; 2ded5 (b:5ed5)
	ld e, PLAY_AREA_ARENA
	call GetCardDamageAndMaxHP
	ldtx hl, NoDamageCountersText
	cp 10
	ret

Naptime_Success50PercentEffect: ; 2dee0 (b:5ee0)
	ldtx de, SuccessCheckIfHeadsAttackIsSuccessfulText
	call TossCoin_BankB
	ldh [hTemp_ffa0], a
	jp nc, SetWasUnsuccessful
	ld a, ATK_ANIM_RECOVER
	ld [wLoadedAttackAnimation], a
	ret

Naptime_HealEffect: ; 2def1 (b:5ef1)
	ldh a, [hTemp_ffa0]
	or a
	ret z ; coin toss was tails
	ld e, PLAY_AREA_ARENA
	call GetCardDamageAndMaxHP
	or a
	ret z ; no damage counters
	ld a, DUELVARS_ARENA_CARD_HP
	call GetTurnDuelistVariable
	add 30
	ld [hl], a
	ret

ShadowAttack_PlayerSelectEffect: ; 2e23c (b:623c)
	ldtx hl, ChoosePkmnInTheBenchToGiveDamageText
	call DrawWideTextBox_WaitForInput
	call SwapTurn
	bank1call HasAlivePokemonInBench
.loop_input
	bank1call OpenPlayAreaScreenForSelection
	jr c, .loop_input
	ldh a, [hTempPlayAreaLocation_ff9d]
	ldh [hTemp_ffa0], a
	call SwapTurn
	ret

ShadowAttack_AISelectEffect: ; 2e255 (b:6255)
; chooses Bench Pokemon with least amount of remaining HP
	call GetBenchPokemonWithLowestHP
	ldh [hTemp_ffa0], a
	ret

ShadowAttack_BenchDamageEffect: ; 2e25b (b:625b)
	call SwapTurn
	ldh a, [hTemp_ffa0]
	ld b, a
	ld de, 30
	call DealDamageToPlayAreaPokemon_RegularAnim
	call SwapTurn
	ret

StretchVine_PlayerSelectEffect: ; 2e23c (b:623c)
	ldtx hl, ChoosePkmnInTheBenchToGiveDamageText
	call DrawWideTextBox_WaitForInput
	call SwapTurn
	bank1call HasAlivePokemonInBench
.loop_input
	bank1call OpenPlayAreaScreenForSelection
	jr c, .loop_input
	ldh a, [hTempPlayAreaLocation_ff9d]
	ldh [hTemp_ffa0], a
	call SwapTurn
	ret

StretchVine_AISelectEffect: ; 2e255 (b:6255)
; chooses Bench Pokemon with least amount of remaining HP
	call GetBenchPokemonWithLowestHP
	ldh [hTemp_ffa0], a
	ret

StretchVine_BenchDamageEffect: ; 2e25b (b:625b)
	call SwapTurn
	ldh a, [hTemp_ffa0]
	ld b, a
	ld de, 10
	call DealDamageToPlayAreaPokemon_RegularAnim
	call SwapTurn
	ret

Needles_AIEffect: ; 2c6f0 (b:46f0)
	ld a, 10 / 2
	lb de, 0, 10
	jp SetExpectedAIDamage

; If heads, defending Pokemon becomes poisoned
Needles_PoisonParalysis50PercentEffect: ; 2c6f8 (b:46f8)
	ldtx de, PoisonCheckText
	call TossCoin_BankB
	jp c, PoisonEffect
	jp c, ParalysisEffect
	ld a, ATK_ANIM_SPIT_POISON_SUCCESS
	ld [wLoadedAttackAnimation], a
	call SetNoEffectFromStatus
	ret

GravelerDetonateEffect: ; 2ccea (b:4cea)
	ld a, 50
	call DealRecoilDamageToSelf
	ld a, $01
	ld [wIsDamageToSelf], a
	ld a, 10
	call DealDamageToAllBenchedPokemon
	call SwapTurn
	xor a
	ld [wIsDamageToSelf], a
	ld a, 10
	call DealDamageToAllBenchedPokemon
	call SwapTurn
	ret

RhyhornTakeDownEffect: ; 2d37f (b:537f)
	ld a, 10
	call DealRecoilDamageToSelf
	ret

HurricanePunch_AIEffect: ; 2e4d6 (b:64d6)
	ld a, (30 * 4) / 2
	lb de, 0, 120
	jp SetExpectedAIDamage

HurricanePunch_MultiplierEffect: ; 2e4de (b:64de)
	ld hl, 30
	call LoadTxRam3
	ldtx de, DamageCheckIfHeadsXDamageText
	ld a, 4
	call TossCoinATimes_BankB
	add a ; a = 2 * heads
	call ATimes10
	call SetDefiniteDamage
	ret


AerialManeuvers_AIEffect: ; 2d385 (b:5385)
	ld a, (10 + 40) / 2
	lb de, 10, 40
	jp SetExpectedAIDamage


AerialManeuvers_DamageBoostEffect: ; 2d38d (b:538d)
	ld hl, 30
	call LoadTxRam3
	ldtx de, DamageCheckIfHeadsPlusDamageDoNotReceiveDamageOrEffectText
	call TossCoin_BankB
	ret nc ; return if tails
	ld a, 30
	call AddToDamage
	ld a, ATK_ANIM_AGILITY_PROTECT
	ld [wLoadedAttackAnimation], a
	ld a, SUBSTATUS1_AGILITY
	call ApplySubstatus1ToDefendingCard
	ret

OneTwoPunch_AIEffect: ; 2d385 (b:5385)
	ld a, (30 + 40) / 2
	lb de, 30, 40
	jp SetExpectedAIDamage

OneTwoPunch_DamageBoostEffect: ; 2d549 (b:5549)
	ld hl, 10
	call LoadTxRam3
	ldtx de, DamageCheckIfHeadsPlusDamageText
	call TossCoin_BankB
	ret nc ; return if tails
	ld a, 10
	call AddToDamage
	ret

Ambush_AIEffect: ; 2d385 (b:5385)
	ld a, (20 + 40) / 2
	lb de, 20, 40
	jp SetExpectedAIDamage

Ambush_DamageBoostEffect: ; 2d549 (b:5549)
	ld hl, 20
	call LoadTxRam3
	ldtx de, DamageCheckIfHeadsPlusDamageText
	call TossCoin_BankB
	ret nc ; return if tails
	ld a, 20
	call AddToDamage
	ret
