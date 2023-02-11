deck_const: MACRO
if const_value >= 2
\1_ID EQU const_value - 2
endc
	const \1
ENDM

; Both *_DECK and *_DECK_ID constants are defined here.
; *_DECK constants are to be used with LoadDeck and related routines.
; *_DECK_ID constants are specific to be loaded into wOpponentDeckID.
; Always, *_DECK_ID = *_DECK - 2. UNNAMED_DECK_ID and UNNAMED_2_DECK_ID do not exist.
	const_def
	deck_const UNNAMED_DECK                ; $00
	deck_const UNNAMED_2_DECK              ; $01
	deck_const SAMS_PRACTICE_DECK          ; $02
	deck_const PRACTICE_PLAYER_DECK        ; $03
	deck_const SAMS_NORMAL_DECK            ; $04
	deck_const CYNDAQUIL_AND_FRIENDS_DECK  ; $05
	deck_const CYNDAQUIL_EXTRA_DECK        ; $06
	deck_const TOTODILE_AND_FRIENDS_DECK   ; $07
	deck_const TOTODILE_EXTRA_DECK         ; $08
	deck_const CHIKORITA_AND_FRIENDS_DECK  ; $09
	deck_const CHIKORITA_EXTRA_DECK        ; $0A
	deck_const LIGHTNING_AND_FIRE_DECK     ; $0B
	deck_const WATER_AND_FIGHTING_DECK     ; $0C
	deck_const GRASS_AND_PSYCHIC_DECK      ; $0D
	deck_const LEGENDARY_ENTEI_DECK        ; $0E
	deck_const LEGENDARY_RAIKOU_DECK       ; $0F
	deck_const LEGENDARY_SUICUNE_DECK      ; $10
	deck_const LUGIA_AND_HOOH_DECK    	   ; $11
	deck_const RIVERSIDE_DECK              ; $12
	deck_const AUGURY_DECK           	   ; $13
	deck_const MEMORIES_OF_YOUTH_DECK      ; $14
	deck_const ECHOLOCATION_DECK   		   ; $15
	deck_const EEVEELUTIONS_DECK           ; $16
	deck_const PREDATOR_DECK       		   ; $17
	deck_const EXCAVATION_DECK     		   ; $18
	deck_const DAMAGE_VARIATION_DECK       ; $19
	deck_const IM_RONALD_DECK              ; $1A
	deck_const POWERFUL_RONALD_DECK        ; $1B
	deck_const INVINCIBLE_RONALD_DECK      ; $1C
	deck_const LEGENDARY_RONALD_DECK       ; $1D
	deck_const VERSATILITY_DECK     	   ; $1E
	deck_const CERTAIN_DEATH_DECK          ; $1F
	deck_const TOXIC_SPIKES_DECK           ; $20
	deck_const CEPHALOPOD_DECK             ; $21
	deck_const MONSTROSITY_DECK     	   ; $22
	deck_const ENERGY_MANIPULATION_DECK    ; $23
	deck_const DEFIBRILLATION_DECK		   ; $24
	deck_const METAMORPHOSIS_DECK          ; $25
	deck_const DANCE_PLANTS_DECK     	   ; $26
	deck_const PIKACHU_DECK                ; $27
	deck_const BENCH_HAZARD_DECK 		   ; $28
	deck_const WATER_MEMORY_DECK           ; $29
	deck_const INVINCIBILITY_DECK          ; $2A
	deck_const GARDENING_DECK          	   ; $2B
	deck_const BABYLUTIONS_DECK            ; $2C
	deck_const BENCH_LUCK_DECK             ; $2D
	deck_const BABYSPINNER_DECK            ; $2E
	deck_const CAMBRIAN_HUSTLE_DECK        ; $2F
	deck_const BLISSEY_STALL_DECK          ; $30
	deck_const NO_RETREAT_DECK         	   ; $31
	deck_const OVERTIDE_DECK               ; $32
	deck_const ELECTROMAGNETIC_DECK        ; $33
	deck_const FLAMETHROWER_DECK           ; $34
	deck_const EARTHQUAKE_DECK             ; $35
	deck_const IMAKUNI_DECK                ; $36
DECKS_END EQU const_value - 1
DECK_IDS_END EQU DECKS_END - 2
