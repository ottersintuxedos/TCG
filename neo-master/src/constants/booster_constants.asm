NUM_CARDS_IN_BOOSTER EQU 10

	const_def
	const BOOSTER_CARD_TYPE_GRASS     ; $00
	const BOOSTER_CARD_TYPE_FIRE      ; $01
	const BOOSTER_CARD_TYPE_WATER     ; $02
	const BOOSTER_CARD_TYPE_LIGHTNING ; $03
	const BOOSTER_CARD_TYPE_FIGHTING  ; $04
	const BOOSTER_CARD_TYPE_PSYCHIC   ; $05
	const BOOSTER_CARD_TYPE_METAL
	const BOOSTER_CARD_TYPE_DARKNESS
	const BOOSTER_CARD_TYPE_COLORLESS ; $06
	const BOOSTER_CARD_TYPE_TRAINER   ; $07
	const BOOSTER_CARD_TYPE_ENERGY    ; $08
NUM_BOOSTER_CARD_TYPES EQU const_value

	const_def
	const BOOSTER_GENESIS  ; $00
	const BOOSTER_DISCOVERY  ; $01
	const BOOSTER_REVELATION    ; $02
	const BOOSTER_EXODUS ; $03

	const_def
	const BOOSTER_GENESIS_NEUTRAL           ; $00
	const BOOSTER_GENESIS_GRASS             ; $01
	const BOOSTER_GENESIS_FIRE              ; $02
	const BOOSTER_GENESIS_WATER             ; $03
	const BOOSTER_GENESIS_LIGHTNING         ; $04
	const BOOSTER_GENESIS_FIGHTING          ; $05
	const BOOSTER_GENESIS_TRAINER           ; $06
	const BOOSTER_DISCOVERY_NEUTRAL           ; $07
	const BOOSTER_DISCOVERY_GRASS             ; $08
	const BOOSTER_DISCOVERY_FIRE              ; $09
	const BOOSTER_DISCOVERY_WATER             ; $0a
	const BOOSTER_DISCOVERY_FIGHTING          ; $0b
	const BOOSTER_DISCOVERY_PSYCHIC           ; $0c
	const BOOSTER_DISCOVERY_TRAINER           ; $0d
	const BOOSTER_REVELATION_NEUTRAL             ; $0e
	const BOOSTER_REVELATION_GRASS_COLORLESS     ; $0f
	const BOOSTER_REVELATION_WATER_COLORLESS     ; $10
	const BOOSTER_REVELATION_LIGHTNING_COLORLESS ; $11
	const BOOSTER_REVELATION_FIGHTING_COLORLESS  ; $12
	const BOOSTER_REVELATION_TRAINER_COLORLESS   ; $13
	const BOOSTER_EXODUS_NEUTRAL          ; $14
	const BOOSTER_EXODUS_GRASS            ; $15
	const BOOSTER_EXODUS_WATER            ; $16
	const BOOSTER_EXODUS_PSYCHIC          ; $17
	const BOOSTER_EXODUS_TRAINER          ; $18
	const BOOSTER_ENERGY_LIGHTNING_FIRE       ; $19
	const BOOSTER_ENERGY_WATER_FIGHTING       ; $1a
	const BOOSTER_ENERGY_GRASS_PSYCHIC        ; $1b
	const BOOSTER_ENERGY_RANDOM               ; $1c
NO_BOOSTER EQU $ff
