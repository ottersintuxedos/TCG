; TODO: figure out the rest of the data for each map
; related to the table at 20:4e5d
MapHeaders: ; 1c374 (7:4374)
	db TILEMAP_OVERWORLD_MAP,           TILEMAP_OVERWORLD_MAP_CGB,           $00, MAP_SGB_PALS_1,  $01, MUSIC_OVERWORLD     ; OVERWORLD_MAP
	db TILEMAP_MASON_LABORATORY,        TILEMAP_MASON_LABORATORY_CGB,        $00, MAP_SGB_PALS_2,  $02, MUSIC_OVERWORLD     ; MASON_LABORATORY
	db TILEMAP_DECK_MACHINE_ROOM,       TILEMAP_DECK_MACHINE_ROOM_CGB,       $00, MAP_SGB_PALS_2,  $02, MUSIC_OVERWORLD     ; DECK_MACHINE_ROOM
	db TILEMAP_ISHIHARA,                TILEMAP_ISHIHARA_CGB,                $00, MAP_SGB_PALS_3,  $03, MUSIC_OVERWORLD     ; ISHIHARAS_HOUSE
	db TILEMAP_FIGHTING_CLUB_ENTRANCE,  TILEMAP_FIGHTING_CLUB_ENTRANCE_CGB,  $00, MAP_SGB_PALS_3,  $04, MUSIC_OVERWORLD     ; FIGHTING_CLUB_ENTRANCE
	db TILEMAP_CLUB_LOBBY,              TILEMAP_CLUB_LOBBY_CGB,              $00, MAP_SGB_PALS_3,  $0c, MUSIC_OVERWORLD     ; FIGHTING_CLUB_LOBBY
	db TILEMAP_FIGHTING_CLUB,           TILEMAP_FIGHTING_CLUB_CGB,           $00, MAP_SGB_PALS_4,  $0d, MUSIC_CLUB_3        ; FIGHTING_CLUB
	db TILEMAP_ROCK_CLUB_ENTRANCE,      TILEMAP_ROCK_CLUB_ENTRANCE_CGB,      $00, MAP_SGB_PALS_3,  $05, MUSIC_OVERWORLD     ; ROCK_CLUB_ENTRANCE
	db TILEMAP_CLUB_LOBBY,              TILEMAP_CLUB_LOBBY_CGB,              $00, MAP_SGB_PALS_3,  $0c, MUSIC_OVERWORLD     ; ROCK_CLUB_LOBBY
	db TILEMAP_ROCK_CLUB,               TILEMAP_ROCK_CLUB_CGB,               $00, MAP_SGB_PALS_4,  $0e, MUSIC_CLUB_2        ; ROCK_CLUB
	db TILEMAP_WATER_CLUB_ENTRANCE,     TILEMAP_WATER_CLUB_ENTRANCE_CGB,     $00, MAP_SGB_PALS_3,  $06, MUSIC_OVERWORLD     ; WATER_CLUB_ENTRANCE
	db TILEMAP_CLUB_LOBBY,              TILEMAP_CLUB_LOBBY_CGB,              $00, MAP_SGB_PALS_3,  $0c, MUSIC_OVERWORLD     ; WATER_CLUB_LOBBY
	db TILEMAP_WATER_CLUB,              TILEMAP_WATER_CLUB_CGB,              $00, MAP_SGB_PALS_2,  $0f, MUSIC_CLUB_2        ; WATER_CLUB
	db TILEMAP_LIGHTNING_CLUB_ENTRANCE, TILEMAP_LIGHTNING_CLUB_ENTRANCE_CGB, $00, MAP_SGB_PALS_3,  $07, MUSIC_OVERWORLD     ; LIGHTNING_CLUB_ENTRANCE
	db TILEMAP_CLUB_LOBBY,              TILEMAP_CLUB_LOBBY_CGB,              $00, MAP_SGB_PALS_3,  $0c, MUSIC_OVERWORLD     ; LIGHTNING_CLUB_LOBBY
	db TILEMAP_LIGHTNING_CLUB,          TILEMAP_LIGHTNING_CLUB_CGB,          $00, MAP_SGB_PALS_5,  $10, MUSIC_CLUB_1        ; LIGHTNING_CLUB
	db TILEMAP_GRASS_CLUB_ENTRANCE,     TILEMAP_GRASS_CLUB_ENTRANCE_CGB,     $00, MAP_SGB_PALS_3,  $08, MUSIC_OVERWORLD     ; GRASS_CLUB_ENTRANCE
	db TILEMAP_CLUB_LOBBY,              TILEMAP_CLUB_LOBBY_CGB,              $00, MAP_SGB_PALS_3,  $0c, MUSIC_OVERWORLD     ; GRASS_CLUB_LOBBY
	db TILEMAP_GRASS_CLUB,              TILEMAP_GRASS_CLUB_CGB,              $00, MAP_SGB_PALS_6,  $11, MUSIC_CLUB_1        ; GRASS_CLUB
	db TILEMAP_PSYCHIC_CLUB_ENTRANCE,   TILEMAP_PSYCHIC_CLUB_ENTRANCE_CGB,   $00, MAP_SGB_PALS_3,  $09, MUSIC_OVERWORLD     ; PSYCHIC_CLUB_ENTRANCE
	db TILEMAP_CLUB_LOBBY,              TILEMAP_CLUB_LOBBY_CGB,              $00, MAP_SGB_PALS_3,  $0c, MUSIC_OVERWORLD     ; PSYCHIC_CLUB_LOBBY
	db TILEMAP_PSYCHIC_CLUB,            TILEMAP_PSYCHIC_CLUB_CGB,            $00, MAP_SGB_PALS_7,  $12, MUSIC_CLUB_2        ; PSYCHIC_CLUB
	db TILEMAP_SCIENCE_CLUB_ENTRANCE,   TILEMAP_SCIENCE_CLUB_ENTRANCE_CGB,   $00, MAP_SGB_PALS_3,  $0a, MUSIC_OVERWORLD     ; SCIENCE_CLUB_ENTRANCE
	db TILEMAP_CLUB_LOBBY,              TILEMAP_CLUB_LOBBY_CGB,              $00, MAP_SGB_PALS_3,  $0c, MUSIC_OVERWORLD     ; SCIENCE_CLUB_LOBBY
	db TILEMAP_SCIENCE_CLUB,            TILEMAP_SCIENCE_CLUB_CGB,            $00, MAP_SGB_PALS_6,  $13, MUSIC_CLUB_3        ; SCIENCE_CLUB
	db TILEMAP_FIRE_CLUB_ENTRANCE,      TILEMAP_FIRE_CLUB_ENTRANCE_CGB,      $00, MAP_SGB_PALS_3,  $0b, MUSIC_OVERWORLD     ; FIRE_CLUB_ENTRANCE
	db TILEMAP_CLUB_LOBBY,              TILEMAP_CLUB_LOBBY_CGB,              $00, MAP_SGB_PALS_3,  $0c, MUSIC_OVERWORLD     ; FIRE_CLUB_LOBBY
	db TILEMAP_FIRE_CLUB,               TILEMAP_FIRE_CLUB_CGB,               $00, MAP_SGB_PALS_8,  $14, MUSIC_CLUB_3        ; FIRE_CLUB
	db TILEMAP_CHALLENGE_HALL_ENTRANCE, TILEMAP_CHALLENGE_HALL_ENTRANCE_CGB, $00, MAP_SGB_PALS_3,  $04, MUSIC_OVERWORLD     ; CHALLENGE_HALL_ENTRANCE
	db TILEMAP_CLUB_LOBBY,              TILEMAP_CLUB_LOBBY_CGB,              $00, MAP_SGB_PALS_3,  $0c, MUSIC_OVERWORLD     ; CHALLENGE_HALL_LOBBY
	db TILEMAP_CHALLENGE_HALL,          TILEMAP_CHALLENGE_HALL_CGB,          $00, MAP_SGB_PALS_9,  $15, MUSIC_OVERWORLD     ; CHALLENGE_HALL
	db TILEMAP_POKEMON_DOME_ENTRANCE,   TILEMAP_POKEMON_DOME_ENTRANCE_CGB,   $00, MAP_SGB_PALS_10, $16, MUSIC_OVERWORLD     ; POKEMON_DOME_ENTRANCE
	db TILEMAP_POKEMON_DOME,            TILEMAP_POKEMON_DOME_CGB,            $00, MAP_SGB_PALS_10, $17, MUSIC_POKEMON_DOME  ; POKEMON_DOME
	db TILEMAP_HALL_OF_HONOR,           TILEMAP_HALL_OF_HONOR_CGB,           $00, MAP_SGB_PALS_10, $18, MUSIC_HALL_OF_HONOR ; HALL_OF_HONOR