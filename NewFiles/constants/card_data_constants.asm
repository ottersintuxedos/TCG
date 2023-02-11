NONE EQU $0

; sCardCollection constants
CARD_COLLECTION_SIZE EQU $100 ; cards
MAX_AMOUNT_OF_CARD   EQU 99
CARD_NOT_OWNED_F     EQU 7
CARD_NOT_OWNED       EQU 1 << CARD_NOT_OWNED_F
CARD_COUNT_MASK      EQU $7f

; sDeck* and generic deck constants
NUM_DECKS                EQU 4
DECK_NAME_SIZE           EQU 24
DECK_NAME_SIZE_WO_SUFFIX EQU 21 ; name part before "deck"
DECK_SIZE                EQU 60
DECK_STRUCT_SIZE         EQU DECK_NAME_SIZE + DECK_SIZE
DECK_CONFIG_BUFFER_SIZE  EQU 80
MAX_NUM_SAME_NAME_CARDS  EQU 4
MAX_UNNAMED_DECK_NUM     EQU 999

; card data offsets (data/cards.asm and card_data_struct)

; all card types
CARD_DATA_TYPE                  EQU $00
CARD_DATA_GFX                   EQU $01
CARD_DATA_NAME                  EQU $03
CARD_DATA_RARITY                EQU $05
CARD_DATA_SET                   EQU $06
CARD_DATA_ID                    EQU $07
CARD_DATA_EFFECT_COMMANDS       EQU $08 ; !TYPE_PKMN
CARD_DATA_HP                    EQU $08 ; TYPE_PKMN
CARD_DATA_STAGE                 EQU $09 ; TYPE_PKMN
CARD_DATA_NONPKMN_DESCRIPTION   EQU $0a ; !TYPE_PKMN
CARD_DATA_PREEVO_NAME           EQU $0a ; TYPE_PKMN

TRN_CARD_DATA_LENGTH    EQU $0e
ENERGY_CARD_DATA_LENGTH EQU $0e

; TYPE_PKMN card only
CARD_DATA_ATTACK1                 EQU $0c
CARD_DATA_ATTACK1_ENERGY_COST     EQU $0c
CARD_DATA_ATTACK1_NAME            EQU $10
CARD_DATA_ATTACK1_DESCRIPTION     EQU $12
CARD_DATA_ATTACK1_DAMAGE          EQU $16
CARD_DATA_ATTACK1_CATEGORY        EQU $17
CARD_DATA_ATTACK1_EFFECT_COMMANDS EQU $18
CARD_DATA_ATTACK1_FLAG1           EQU $1a
CARD_DATA_ATTACK1_FLAG2           EQU $1b
CARD_DATA_ATTACK1_FLAG3           EQU $1c
CARD_DATA_ATTACK1_EFFECT_PARAM    EQU $1d
CARD_DATA_ATTACK1_ANIMATION       EQU $1e

; TYPE_PKMN card only
CARD_DATA_ATTACK2                 EQU $1f
CARD_DATA_ATTACK2_ENERGY_COST     EQU $1f
CARD_DATA_ATTACK2_NAME            EQU $23
CARD_DATA_ATTACK2_DESCRIPTION     EQU $25
CARD_DATA_ATTACK2_DAMAGE          EQU $29
CARD_DATA_ATTACK2_CATEGORY        EQU $2a
CARD_DATA_ATTACK2_EFFECT_COMMANDS EQU $2b
CARD_DATA_ATTACK2_FLAG1           EQU $2d
CARD_DATA_ATTACK2_FLAG2           EQU $2e
CARD_DATA_ATTACK2_FLAG3           EQU $2f
CARD_DATA_ATTACK2_EFFECT_PARAM    EQU $30
CARD_DATA_ATTACK2_ANIMATION       EQU $31

; TYPE_PKMN card only
CARD_DATA_RETREAT_COST          EQU $32
CARD_DATA_WEAKNESS              EQU $33
CARD_DATA_RESISTANCE            EQU $34
CARD_DATA_CATEGORY              EQU $35
CARD_DATA_POKEDEX_NUMBER        EQU $37
CARD_DATA_UNKNOWN1              EQU $38
CARD_DATA_LEVEL                 EQU $39
CARD_DATA_LENGTH                EQU $3a
CARD_DATA_WEIGHT                EQU $3c
CARD_DATA_PKMN_DESCRIPTION      EQU $3e
CARD_DATA_UNKNOWN2              EQU $40

PKMN_CARD_DATA_LENGTH EQU $41

; generic type (color) constants
	const_def
	const FIRE        ; $00
	const GRASS       ; $01
	const LIGHTNING   ; $02
	const WATER       ; $03
	const FIGHTING    ; $04
	const PSYCHIC     ; $05
	const DARKNESS	  ; $06
	const METAL		  ; $07
NUM_COLORED_TYPES EQU const_value
	const COLORLESS   ; $08
NUM_TYPES EQU const_value

; generic type (color) flag constants
FIRE_F      EQU $1 << FIRE      ; $01
GRASS_F     EQU $1 << GRASS     ; $02
LIGHTNING_F EQU $1 << LIGHTNING ; $04
WATER_F     EQU $1 << WATER     ; $08
FIGHTING_F  EQU $1 << FIGHTING  ; $10
PSYCHIC_F   EQU $1 << PSYCHIC   ; $20
DARKNESS_F	EQU $1 << DARKNESS	; $40
METAL_F		EQU $1 << METAL		; $80	
COLORLESS_F EQU $1 << COLORLESS ; $160

; CARD_DATA_TYPE constants
TYPE_PKMN_FIRE      EQU FIRE
TYPE_PKMN_GRASS     EQU GRASS
TYPE_PKMN_LIGHTNING EQU LIGHTNING
TYPE_PKMN_WATER     EQU WATER
TYPE_PKMN_FIGHTING  EQU FIGHTING
TYPE_PKMN_PSYCHIC   EQU PSYCHIC
TYPE_PKMN_DARKNESS	EQU DARKNESS
TYPE_PKMN_METAL		EQU METAL
TYPE_PKMN_COLORLESS EQU COLORLESS
TYPE_PKMN_UNUSED    EQU UNUSED_TYPE
	const_def TYPE_PKMN_UNUSED + 1 - TYPE_PKMN_FIRE
TYPE_ENERGY EQU const_value
	const TYPE_ENERGY_FIRE             ; $08
	const TYPE_ENERGY_GRASS            ; $09
	const TYPE_ENERGY_LIGHTNING        ; $0a
	const TYPE_ENERGY_WATER            ; $0b
	const TYPE_ENERGY_FIGHTING         ; $0c
	const TYPE_ENERGY_PSYCHIC          ; $0d
	const TYPE_ENERGY_DARKNESS
	const TYPE_ENERGY_METAL
	const TYPE_ENERGY_DOUBLE_COLORLESS ; $0e
	const TYPE_ENERGY_UNUSED           ; $0f
	const TYPE_TRAINER                 ; $10
	const TYPE_TRAINER_UNUSED          ; $11
NUM_CARD_TYPES EQU const_value - 1

TYPE_PKMN      EQU %111
TYPE_ENERGY_F  EQU 3
TYPE_TRAINER_F EQU 4

; CARD_DATA_RARITY constants
CIRCLE    EQU $0
DIAMOND   EQU $1
STAR      EQU $2
PROMOSTAR EQU $ff

; card set constants (set 1)
	const_def
	const CARD_SET_GENESIS    ; $0
	const CARD_SET_DISCOVERY  ; $1
	const CARD_SET_REVELATION ; $2
	const CARD_SET_EXODUS  	  ; $3
	const CARD_SET_PROMOTIONAL; $4
	const CARD_SET_ENERGY     ; $5
NUM_CARD_SETS EQU const_value - 1

; CARD_DATA_SET constants (set 1)
GENESIS   	EQU CARD_SET_GENESIS     << 4
DISCOVERY   EQU CARD_SET_DISCOVERY   << 4
REVELATION  EQU CARD_SET_REVELATION  << 4
EXODUS  	EQU CARD_SET_EXODUS 	 << 4
PROMOTIONAL EQU CARD_SET_PROMOTIONAL << 4
ENERGY      EQU CARD_SET_ENERGY      << 4

; CARD_DATA_SET constants (set 2)
JUNGLE EQU $1
FOSSIL EQU $2
GB     EQU $7
PRO    EQU $8

; CARD_DATA_STAGE constants
BASIC  EQU $00
STAGE1 EQU $01
STAGE2 EQU $02
STAGE2_WITHOUT_STAGE1 EQU $03

; CARD_DATA_WEAKNESS and CARD_DATA_RESISTANCE constants
WR_FIRE      EQU $80
WR_GRASS     EQU $40
WR_LIGHTNING EQU $20
WR_WATER     EQU $10
WR_FIGHTING  EQU $08
WR_PSYCHIC   EQU $04

; CARD_DATA_ATTACK*_CATEGORY constants
DAMAGE_NORMAL EQU $00
DAMAGE_PLUS   EQU $01
DAMAGE_MINUS  EQU $02
DAMAGE_X      EQU $03
POKEMON_POWER EQU $04
RESIDUAL_F    EQU 7
RESIDUAL      EQU 1 << RESIDUAL_F

; Bit mask for CheckLoadedAttackFlag
; for flag address from wLoadedAttackFlag1
ATTACK_FLAG1_ADDRESS EQU $0 << 3
ATTACK_FLAG2_ADDRESS EQU $1 << 3
ATTACK_FLAG3_ADDRESS EQU $2 << 3

; CARD_DATA_ATTACK*_FLAG1 constants
INFLICT_POISON_F           EQU %000
INFLICT_SLEEP_F            EQU %001
INFLICT_PARALYSIS_F        EQU %010
INFLICT_CONFUSION_F        EQU %011
LOW_RECOIL_F               EQU %100
DAMAGE_TO_OPPONENT_BENCH_F EQU %101
HIGH_RECOIL_F              EQU %110
DRAW_CARD_F                EQU %111

; CARD_DATA_ATTACK*_FLAG2 constants
; bits 5, 6 and 7 cover a wide variety of effects
SWITCH_OPPONENT_POKEMON_F  EQU %000
HEAL_USER_F                EQU %001
NULLIFY_OR_WEAKEN_ATTACK_F EQU %010
DISCARD_ENERGY_F           EQU %011
ATTACHED_ENERGY_BOOST_F    EQU %100
FLAG_2_BIT_5_F             EQU %101
FLAG_2_BIT_6_F             EQU %110
FLAG_2_BIT_7_F             EQU %111

; CARD_DATA_ATTACK*_FLAG3 constants
; bit 1 covers a wide variety of effects
; bits 2-7 are unused
BOOST_IF_TAKEN_DAMAGE_F    EQU %000
SPECIAL_AI_HANDLING_F      EQU %001

; CARD_DATA_ATTACK*_FLAG1_F constants
INFLICT_POISON           EQU $1 << INFLICT_POISON_F
INFLICT_SLEEP            EQU $1 << INFLICT_SLEEP_F
INFLICT_PARALYSIS        EQU $1 << INFLICT_PARALYSIS_F
INFLICT_CONFUSION        EQU $1 << INFLICT_CONFUSION_F
LOW_RECOIL               EQU $1 << LOW_RECOIL_F
DAMAGE_TO_OPPONENT_BENCH EQU $1 << DAMAGE_TO_OPPONENT_BENCH_F
HIGH_RECOIL              EQU $1 << HIGH_RECOIL_F
DRAW_CARD                EQU $1 << DRAW_CARD_F

; CARD_DATA_ATTACK*_FLAG2_F constants
; bits 5, 6 and 7 cover a wide variety of effects
SWITCH_OPPONENT_POKEMON  EQU $1 << SWITCH_OPPONENT_POKEMON_F
HEAL_USER                EQU $1 << HEAL_USER_F
NULLIFY_OR_WEAKEN_ATTACK EQU $1 << NULLIFY_OR_WEAKEN_ATTACK_F
DISCARD_ENERGY           EQU $1 << DISCARD_ENERGY_F
ATTACHED_ENERGY_BOOST    EQU $1 << ATTACHED_ENERGY_BOOST_F
FLAG_2_BIT_5             EQU $1 << FLAG_2_BIT_5_F
FLAG_2_BIT_6             EQU $1 << FLAG_2_BIT_6_F
FLAG_2_BIT_7             EQU $1 << FLAG_2_BIT_7_F

; CARD_DATA_ATTACK*_FLAG3_F constants
; bit 1 covers a wide variety of effects
; bits 2-7 are unused
BOOST_IF_TAKEN_DAMAGE    EQU $1 << BOOST_IF_TAKEN_DAMAGE_F
SPECIAL_AI_HANDLING      EQU $1 << SPECIAL_AI_HANDLING_F

; special CARD_DATA_RETREAT_COST values
UNABLE_RETREAT EQU $64

; attack index constants
FIRST_ATTACK_OR_PKMN_POWER EQU $0
SECOND_ATTACK              EQU $1

; whether attack with the ATTACHED_ENERGY_BOOST flag
; has limit on attached energy cards boost.
MAX_ENERGY_BOOST_IS_LIMITED     EQU $2
MAX_ENERGY_BOOST_IS_NOT_LIMITED EQU $3
