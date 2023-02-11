INCLUDE "macros.asm"
INCLUDE "constants.asm"

SECTION "Gfx 1", ROMX

Fonts::

FullWidthFonts:: ; 74000 (1d:4000)
INCBIN "gfx/fonts/full_width/0_0_katakana.1bpp"
INCBIN "gfx/fonts/full_width/0_1_hiragana.1bpp"
INCBIN "gfx/fonts/full_width/0_2_digits_kanji1.1bpp"
INCBIN "gfx/fonts/full_width/1_kanji2.1bpp"
INCBIN "gfx/fonts/full_width/2_kanji3.1bpp"
INCBIN "gfx/fonts/full_width/3.1bpp"
INCBIN "gfx/fonts/full_width/4.1bpp"

HalfWidthFont:: ; 76668 (1d:6668)
INCBIN "gfx/fonts/half_width.1bpp"

SymbolsFont:: ; 76968 (1d:6968)
INCBIN "gfx/fonts/symbols.2bpp"

DuelGraphics::

DuelCardHeaderGraphics:: ; 76ce8 (1d:6ce8)
INCBIN "gfx/duel/card_headers.2bpp"

DuelDmgSgbSymbolGraphics:: ; 76fe8 (1d:6fe8)
INCBIN "gfx/duel/dmg_sgb_symbols.2bpp"

DuelCgbSymbolGraphics:: ; 777f8 (1d:77f8)
INCBIN "gfx/duel/cgb_symbols.2bpp", $0, $808

SECTION "Gfx 2", ROMX

INCBIN "gfx/duel/cgb_symbols.2bpp", $808, $8

DuelOtherGraphics:: ; 78008 (1e:4008)
INCBIN "gfx/duel/other.2bpp"

DuelBoxMessages:: ; 78318 (1e:4318)
INCBIN "gfx/duel/box_messages.2bpp"

SECTION "Gfx 3", ROMX

WaterClubTilemap:: ; 84000 (21:4000)
	db $1c ; width
	db $20 ; height
	dw WaterClubPermissions
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/water_club.bin"
WaterClubPermissions:
	INCBIN "data/maps/permissions/water_club.bin"

WaterClubCGBTilemap:: ; 84188 (21:4188)
	db $1c ; width
	db $20 ; height
	dw WaterClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/water_club_cgb.bin"
WaterClubCGBPermissions:
	INCBIN "data/maps/permissions/water_club_cgb.bin"

LightningClubTilemap:: ; 843bb (21:43bb)
	db $1c ; width
	db $20 ; height
	dw LightningClubPermissions
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/lightning_club.bin"
LightningClubPermissions:
	INCBIN "data/maps/permissions/lightning_club.bin"

LightningClubCGBTilemap:: ; 84533 (21:4533)
	db $1c ; width
	db $20 ; height
	dw LightningClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/lightning_club_cgb.bin"
LightningClubCGBPermissions:
	INCBIN "data/maps/permissions/lightning_club_cgb.bin"

GrassClubTilemap:: ; 8472e (21:472e)
	db $1c ; width
	db $20 ; height
	dw GrassClubPermissions
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/grass_club.bin"
GrassClubPermissions:
	INCBIN "data/maps/permissions/grass_club.bin"

GrassClubCGBTilemap:: ; 848d8 (21:48d8)
	db $1c ; width
	db $20 ; height
	dw GrassClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/grass_club_cgb.bin"
GrassClubCGBPermissions:
	INCBIN "data/maps/permissions/grass_club_cgb.bin"

PsychicClubTilemap:: ; 84b73 (21:4b73)
	db $1c ; width
	db $1c ; height
	dw PsychicClubPermissions
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/psychic_club.bin"
PsychicClubPermissions:
	INCBIN "data/maps/permissions/psychic_club.bin"

PsychicClubCGBTilemap:: ; 84c6f (21:4c6f)
	db $1c ; width
	db $1c ; height
	dw PsychicClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/psychic_club_cgb.bin"
PsychicClubCGBPermissions:
	INCBIN "data/maps/permissions/psychic_club_cgb.bin"

ScienceClubTilemap:: ; 84dfe (21:4dfe)
	db $1c ; width
	db $20 ; height
	dw ScienceClubPermissions
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/science_club.bin"
ScienceClubPermissions:
	INCBIN "data/maps/permissions/science_club.bin"

ScienceClubCGBTilemap:: ; 84f1d (21:4f1d)
	db $1c ; width
	db $20 ; height
	dw ScienceClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/science_club_cgb.bin"
ScienceClubCGBPermissions:
	INCBIN "data/maps/permissions/science_club_cgb.bin"

FireClubTilemap:: ; 850b6 (21:50b6)
	db $1c ; width
	db $20 ; height
	dw FireClubPermissions
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/fire_club.bin"
FireClubPermissions:
	INCBIN "data/maps/permissions/fire_club.bin"

FireClubCGBTilemap:: ; 85191 (21:5191)
	db $1c ; width
	db $20 ; height
	dw FireClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/fire_club_cgb.bin"
FireClubCGBPermissions:
	INCBIN "data/maps/permissions/fire_club_cgb.bin"

ChallengeHallTilemap:: ; 85315 (21:5315)
	db $20 ; width
	db $20 ; height
	dw ChallengeHallPermissions
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/challenge_hall.bin"
ChallengeHallPermissions:
	INCBIN "data/maps/permissions/challenge_hall.bin"

ChallengeHallCGBTilemap:: ; 854b3 (21:54b3)
	db $20 ; width
	db $20 ; height
	dw ChallengeHallCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/challenge_hall_cgb.bin"
ChallengeHallCGBPermissions:
	INCBIN "data/maps/permissions/challenge_hall_cgb.bin"

PokemonDomeEntranceTilemap:: ; 8570a (21:570a)
	db $20 ; width
	db $12 ; height
	dw PokemonDomeEntrancePermissions
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/pokemon_dome_entrance.bin"
PokemonDomeEntrancePermissions:
	INCBIN "data/maps/permissions/pokemon_dome_entrance.bin"

PokemonDomeEntranceCGBTilemap:: ; 857ce (21:57ce)
	db $20 ; width
	db $12 ; height
	dw PokemonDomeEntranceCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/pokemon_dome_entrance_cgb.bin"
PokemonDomeEntranceCGBPermissions:
	INCBIN "data/maps/permissions/pokemon_dome_entrance_cgb.bin"

PokemonDomeTilemap:: ; 858ef (21:58ef)
	db $20 ; width
	db $20 ; height
	dw PokemonDomePermissions
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/pokemon_dome.bin"
PokemonDomePermissions:
	INCBIN "data/maps/permissions/pokemon_dome.bin"

PokemonDomeCGBTilemap:: ; 85a79 (21:5a79)
	db $20 ; width
	db $20 ; height
	dw PokemonDomeCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/pokemon_dome_cgb.bin"
PokemonDomeCGBPermissions:
	INCBIN "data/maps/permissions/pokemon_dome_cgb.bin"

HallOfHonorTilemap:: ; 85ce2 (21:5ce2)
	db $18 ; width
	db $1a ; height
	dw HallOfHonorPermissions
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/hall_of_honor.bin"
HallOfHonorPermissions:
	INCBIN "data/maps/permissions/hall_of_honor.bin"

HallOfHonorCGBTilemap:: ; 85df4 (21:5df4)
	db $18 ; width
	db $1a ; height
	dw HallOfHonorCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/hall_of_honor_cgb.bin"
HallOfHonorCGBPermissions:
	INCBIN "data/maps/permissions/hall_of_honor_cgb.bin"

CardPopCGBTilemap:: ; 85f7c (21:5f7c)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/card_pop_cgb.bin"

CardPopTilemap:: ; 8607f (21:607f)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/card_pop.bin"

ScienceMedalTilemap:: ; 8617d (21:617d)
	db $03 ; width
	db $03 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/science_medal.bin"

FireMedalTilemap:: ; 86193 (21:6193)
	db $03 ; width
	db $03 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/fire_medal.bin"

WaterMedalTilemap:: ; 861a9 (21:61a9)
	db $03 ; width
	db $03 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/water_medal.bin"

LightningMedalTilemap:: ; 861bf (21:61bf)
	db $03 ; width
	db $03 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/lightning_medal.bin"

FightingMedalTilemap:: ; 861d5 (21:61d5)
	db $03 ; width
	db $03 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/fighting_medal.bin"

RockMedalTilemap:: ; 861eb (21:61eb)
	db $03 ; width
	db $03 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/rock_medal.bin"

PsychicMedalTilemap:: ; 86201 (21:6201)
	db $03 ; width
	db $03 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/psychic_medal.bin"

GameBoyLinkCGBTilemap:: ; 86217 (21:6217)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/gameboy_link_cgb.bin"

GameBoyLinkTilemap:: ; 862da (21:62da)
	db $14 ; width
	db $12 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/gameboy_link.bin"

GameBoyLinkConnectingCGBTilemap:: ; 86364 (21:6364)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/gameboy_link_connecting_cgb.bin"

GameBoyLinkConnectingTilemap:: ; 86443 (21:6443)
	db $14 ; width
	db $12 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/gameboy_link_connecting.bin"

GameBoyPrinterCGBTilemap:: ; 864df (21:64df)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/gameboy_printer_cgb.bin"

GameBoyPrinterTilemap:: ; 865b5 (21:65b5)
	db $14 ; width
	db $12 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/gameboy_printer.bin"

ColosseumTilemap:: ; 86647 (21:6647)
	db $08 ; width
	db $0c ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/colosseum.bin"

ColosseumCGBTilemap:: ; 866b8 (21:66b8)
	db $08 ; width
	db $0c ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/colosseum_cgb.bin"

EvolutionTilemap:: ; 8673e (21:673e)
	db $08 ; width
	db $0c ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/evolution.bin"

EvolutionCGBTilemap:: ; 867af (21:67af)
	db $08 ; width
	db $0c ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/evolution_cgb.bin"

MysteryTilemap:: ; 86833 (21:6833)
	db $08 ; width
	db $0c ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/mystery.bin"

MysteryCGBTilemap:: ; 868a4 (21:68a4)
	db $08 ; width
	db $0c ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/mystery_cgb.bin"

LaboratoryTilemap:: ; 86925 (21:6925)
	db $08 ; width
	db $0c ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/laboratory.bin"

LaboratoryCGBTilemap:: ; 86996 (21:6996)
	db $08 ; width
	db $0c ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/laboratory_cgb.bin"

CharizardIntroTilemap:: ; 86a14 (21:6a14)
	db $08 ; width
	db $0c ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/charizard_intro.bin"

CharizardIntroCGBTilemap:: ; 86a85 (21:6a85)
	db $08 ; width
	db $0c ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/charizard_intro_cgb.bin"

ScytherIntroTilemap:: ; 86b28 (21:6b28)
	db $08 ; width
	db $0c ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/scyther_intro.bin"

ScytherIntroCGBTilemap:: ; 86b99 (21:6b99)
	db $08 ; width
	db $0c ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/scyther_intro_cgb.bin"

AerodactylIntroTilemap:: ; 86c34 (21:6c34)
	db $08 ; width
	db $0c ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/aerodactyl_intro.bin"

AerodactylIntroCGBTilemap:: ; 86ca5 (21:6ca5)
	db $08 ; width
	db $0c ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/aerodactyl_intro_cgb.bin"

JapaneseTitleScreenTilemap:: ; 86d37 (21:6d37)
	db $14 ; width
	db $12 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/japanese_title_screen.bin"

JapaneseTitleScreenCGBTilemap:: ; 86dcc (21:6dcc)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/japanese_title_screen_cgb.bin"

SolidTiles1Tilemap:: ; 86e8a (21:6e8a)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/solid_tiles_1.bin"

SolidTiles2Tilemap:: ; 86f18 (21:6f18)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/solid_tiles_2.bin"

SolidTiles3Tilemap:: ; 86fc0 (21:6fc0)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/solid_tiles_3.bin"

JapaneseTitleScreen2Tilemap:: ; 8704f (21:704f)
	db $14 ; width
	db $12 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/japanese_title_screen_2.bin"

JapaneseTitleScreen2CGBTilemap:: ; 871a5 (21:71a5)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/japanese_title_screen_2_cgb.bin"

SolidTiles4Tilemap:: ; 87397 (21:7397)
	db $08 ; width
	db $04 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/solid_tiles_4.bin"

PlayerTilemap:: ; 873b7 (21:73b7)
	db $06 ; width
	db $06 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/player.bin"

OpponentTilemap:: ; 873e5 (21:73e5)
	db $06 ; width
	db $06 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/opponent.bin"

TitleScreenTilemap:: ; 87413 (21:7413)
	db $14 ; width
	db $12 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/title_screen.bin"

TitleScreenCGBTilemap:: ; 87538 (21:7538)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/title_screen_cgb.bin"

CopyrightTilemap:: ; 8769f (21:769f)
	db $14 ; width
	db $12 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/copyright.bin"

CopyrightCGBTilemap:: ; 876f6 (21:76f6)
	db $14 ; width
	db $12 ; height
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/copyright_cgb.bin"

NintendoTilemap:: ; 8777c (21:777c)
	db $14 ; width
	db $12 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/nintendo.bin"

CompaniesTilemap:: ; 877c4 (21:77c4)
	db $14 ; width
	db $12 ; height
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/companies.bin"

IshiharaTilesetGfx:: ; 87828 (21:7828)
	dw 77
	INCBIN "gfx/tilesets/ishihara.2bpp"

SolidTiles1:: ; 87cfa (21:7cfa)
	dw 4
	INCBIN "gfx/solid_tiles.2bpp"

SolidTiles2:: ; 87d3c (21:7d3c)
	dw 4
	INCBIN "gfx/solid_tiles.2bpp"

PlayerGfx:: ; 87d7e (21:7d7e)
	dw 36
	INCBIN "gfx/duelists/player.2bpp"

Duel55Gfx:: ; 87fc0 (21:7fc0)
	dw $2
	INCBIN "gfx/duel/anims/55.2bpp"

Duel56Gfx:: ; 87fe2 (21:7fe2)
	dw $1
	INCBIN "gfx/duel/anims/56.2bpp"

AnimData12:: ; 87ff4 (21:7ff4)
	frame_table AnimFrameTable3
	frame_data 2, 8, 0, 0
	frame_data 0, 0, 0, 0

SECTION "Gfx 4", ROMX

OverworldMapTiles:: ; 88000 (22:4000)
	dw 193
	INCBIN "gfx/overworld_map.2bpp"

MasonLaboratoryTilesetGfx:: ; 88c12 (22:4c12)
	dw 151
	INCBIN "gfx/tilesets/masonlaboratory.2bpp"

ClubEntranceTilesetGfx:: ; 89584 (22:5584)
	dw 129
	INCBIN "gfx/tilesets/clubentrance.2bpp"

ClubLobbyTilesetGfx:: ; 89d96 (22:5d96)
	dw 120
	INCBIN "gfx/tilesets/clublobby.2bpp"

FightingClubTilesetGfx:: ; 8a518 (22:6518)
	dw 99
	INCBIN "gfx/tilesets/fightingclub.2bpp"

RockClubTilesetGfx:: ; 8ab4a (22:6b4a)
	dw 60
	INCBIN "gfx/tilesets/rockclub.2bpp"

WaterClubTilesetGfx:: ; 8af0c (22:6f0c)
	dw 161
	INCBIN "gfx/tilesets/waterclub.2bpp"

GrassClubTilesetGfx:: ; 8b91e (22:791e)
	dw 87
	INCBIN "gfx/tilesets/grassclub.2bpp"

OWPlayerGfx:: ; 8be90 (22:7e90)
	dw $14
	INCBIN "gfx/overworld_sprites/player.2bpp"

Duel57Gfx:: ; 8bfd2 (22:7fd2)
	dw $1
	INCBIN "gfx/duel/anims/57.2bpp"

AnimData2:: ; 8bfe4 (22:7fe4)
	frame_table AnimFrameTable0
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

Palette109:: ; 8bffb (22:7ffb)
	db 1, %11100100
	db 0

SECTION "Gfx 5", ROMX

LightningClubTilesetGfx:: ; 8c000 (23:4000)
	dw 131
	INCBIN "gfx/tilesets/lightningclub.2bpp"

PsychicClubTilesetGfx:: ; 8c832 (23:4832)
	dw 58
	INCBIN "gfx/tilesets/psychicclub.2bpp"

ScienceClubTilesetGfx:: ; 8cbd4 (23:4bd4)
	dw 82
	INCBIN "gfx/tilesets/scienceclub.2bpp"

FireClubTilesetGfx:: ; 8d0f6 (23:50f6)
	dw 87
	INCBIN "gfx/tilesets/fireclub.2bpp"

ChallengeHallTilesetGfx:: ; 8d668 (23:5668)
	dw 157
	INCBIN "gfx/tilesets/challengehall.2bpp"

PokemonDomeEntranceTilesetGfx:: ; 8e03a (23:603a)
	dw 78
	INCBIN "gfx/tilesets/pokemondomeentrance.2bpp"

PokemonDomeTilesetGfx:: ; 8e51c (23:651c)
	dw 207
	INCBIN "gfx/tilesets/pokemondome.2bpp"

HallOfHonorTilesetGfx:: ; 8f20e (23:720e)
	dw 121
	INCBIN "gfx/tilesets/hallofhonor.2bpp"

MedalGfx:: ; 8f9a0 (23:79a0)
	dw 72
	INCBIN "gfx/medals.2bpp", $0, $c0
	INCBIN "gfx/medals.2bpp", $240, $30
	INCBIN "gfx/medals.2bpp", $340, $10
	INCBIN "gfx/medals.2bpp", $c0, $c0
	INCBIN "gfx/medals.2bpp", $300, $30
	INCBIN "gfx/medals.2bpp", $350, $10
	INCBIN "gfx/medals.2bpp", $180, $c0
	INCBIN "gfx/medals.2bpp", $3c0, $30
	INCBIN "gfx/medals.2bpp", $410, $10
	INCBIN "gfx/medals.2bpp", $2d0, $30
	INCBIN "gfx/medals.2bpp", $2a0, $30
	INCBIN "gfx/medals.2bpp", $270, $30
	INCBIN "gfx/medals.2bpp", $390, $30
	INCBIN "gfx/medals.2bpp", $360, $30
	INCBIN "gfx/medals.2bpp", $330, $10
	INCBIN "gfx/medals.2bpp", $450, $30
	INCBIN "gfx/medals.2bpp", $420, $30
	INCBIN "gfx/medals.2bpp", $3f0, $20

NintendoGfx:: ; 8fe22 (23:7e22)
	dw 24
	INCBIN "gfx/nintendo.2bpp"

Duel58Gfx:: ; 8ffa4 (23:7fa4)
	dw $4
	INCBIN "gfx/duel/anims/58.2bpp"

AnimData3:: ; 8ffe6 (23:7fe6)
	frame_table AnimFrameTable0
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

AnimData11:: ; 8fff5 (23:7ff5)
	frame_table AnimFrameTable3
	frame_data 1, 8, 0, 0
	frame_data 0, 0, 0, 0

SECTION "Gfx 6", ROMX

CardPopGfx:: ; 90000 (24:4000)
	dw 189
	INCBIN "gfx/link/cardpop.2bpp"

GameBoyLinkGfx:: ; 90bd2 (24:4bd2)
	dw 109
	INCBIN "gfx/link/gameboylink.2bpp"

GameBoyPrinterGfx:: ; 912a4 (24:52a4)
	dw 93
	INCBIN "gfx/link/gameboyprinter.2bpp"

Colosseum1Gfx:: ; 91876 (24:5876)
	dw 96
	INCBIN "gfx/booster_packs/colosseum1.2bpp"

Colosseum2Gfx:: ; 91e78 (24:5e78)
	dw 86
	INCBIN "gfx/booster_packs/colosseum2.2bpp"

Evolution1Gfx:: ; 923da (24:63da)
	dw 96
	INCBIN "gfx/booster_packs/evolution1.2bpp"

Evolution2Gfx:: ; 929dc (24:69dc)
	dw 86
	INCBIN "gfx/booster_packs/evolution2.2bpp"

Mystery1Gfx:: ; 92f3e (24:6f3e)
	dw 96
	INCBIN "gfx/booster_packs/mystery1.2bpp"

Mystery2Gfx:: ; 93540 (24:7540)
	dw 86
	INCBIN "gfx/booster_packs/mystery2.2bpp"

RonaldGfx:: ; 93aa2 (24:7aa2)
	dw 36
	INCBIN "gfx/duelists/ronald.2bpp"

CopyrightGfx:: ; 93ce4 (24:7ce4)
	dw 36
	INCBIN "gfx/copyright.2bpp"

OWClerkGfx:: ; 93f26 (24:7f26)
	dw $8
	INCBIN "gfx/overworld_sprites/clerk.2bpp"

Duel59Gfx:: ; 93fa8 (24:7fa8)
	dw $3
	INCBIN "gfx/duel/anims/59.2bpp"

Duel60Gfx:: ; 93fda (24:7fda)
	dw $2
	INCBIN "gfx/duel/anims/60.2bpp"

SECTION "Gfx 7", ROMX

Laboratory1Gfx:: ; 94000 (25:4000)
	dw 96
	INCBIN "gfx/booster_packs/laboratory1.2bpp"

Laboratory2Gfx:: ; 94602 (25:4602)
	dw 86
	INCBIN "gfx/booster_packs/laboratory2.2bpp"

CharizardIntro1Gfx:: ; 94b64 (25:4b64)
	dw 96
	INCBIN "gfx/titlescreen/booster_packs/charizardintro1.2bpp"

CharizardIntro2Gfx:: ; 95166 (25:5166)
	dw 96
	INCBIN "gfx/titlescreen/booster_packs/charizardintro2.2bpp"

ScytherIntro1Gfx:: ; 95768 (25:5768)
	dw 96
	INCBIN "gfx/titlescreen/booster_packs/scytherintro1.2bpp"

ScytherIntro2Gfx:: ; 95d6a (25:5d6a)
	dw 96
	INCBIN "gfx/titlescreen/booster_packs/scytherintro2.2bpp"

AerodactylIntro1Gfx:: ; 9636c (25:636c)
	dw 96
	INCBIN "gfx/titlescreen/booster_packs/aerodactylintro1.2bpp"

AerodactylIntro2Gfx:: ; 9696e (25:696e)
	dw 96
	INCBIN "gfx/titlescreen/booster_packs/aerodactylintro2.2bpp"

JapaneseTitleScreenGfx:: ; 96f70 (25:6f70)
	dw 97
	INCBIN "gfx/titlescreen/japanese_title_screen.2bpp"

JapaneseTitleScreenCGBGfx:: ; 97582 (25:7582)
	dw 97
	INCBIN "gfx/titlescreen/japanese_title_screen_cgb.2bpp"

CompaniesGfx:: ; 97b94 (25:7b94)
	dw 49
	INCBIN "gfx/companies.2bpp"

OWRonaldGfx:: ; 97ea6 (25:7ea6)
	dw $14
	INCBIN "gfx/overworld_sprites/ronald.2bpp"

AnimData5:: ; 97fe8 (25:7fe8)
	frame_table AnimFrameTable1
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0

SECTION "Gfx 8", ROMX

JapaneseTitleScreen2Gfx:: ; 98000 (26:4000)
	dw 244
	INCBIN "gfx/titlescreen/japanese_title_screen_2.2bpp"

JapaneseTitleScreen2CGBGfx:: ; 98f42 (26:4f42)
	dw 315
	INCBIN "gfx/titlescreen/japanese_title_screen_2_cgb.2bpp"

TitleScreenGfx:: ; 9a2f4 (26:62f4)
	dw 220
	INCBIN "gfx/titlescreen/title_screen.2bpp"

TitleScreenCGBGfx:: ; 9b0b6 (26:70b6)
	dw 212
	INCBIN "gfx/titlescreen/title_screen_cgb.2bpp"

OWDrMasonGfx:: ; 9bdf8 (26:7df8)
	dw $14
	INCBIN "gfx/overworld_sprites/doctormason.2bpp"

OverworldMapOAMGfx:: ; 9bf3a (26:7f3a)
	dw $8
	INCBIN "gfx/overworld_map_oam.2bpp"

Duel61Gfx:: ; 9bfbc (26:7fbc)
	dw $3
	INCBIN "gfx/duel/anims/61.2bpp"

Duel62Gfx:: ; 9bfee (26:7fee)
	dw $1
	INCBIN "gfx/duel/anims/62.2bpp"

SECTION "Gfx 9", ROMX

SamGfx:: ; 9c000 (27:4000)
	dw 36
	INCBIN "gfx/duelists/sam.2bpp"

ImakuniGfx:: ; 9c242 (27:4242)
	dw 36
	INCBIN "gfx/duelists/imakuni.2bpp"

NikkiGfx:: ; 9c484 (27:4484)
	dw 36
	INCBIN "gfx/duelists/nikki.2bpp"

RickGfx:: ; 9c6c6 (27:46c6)
	dw 36
	INCBIN "gfx/duelists/rick.2bpp"

KenGfx:: ; 9c908 (27:4908)
	dw 36
	INCBIN "gfx/duelists/ken.2bpp"

AmyGfx:: ; 9cb4a (27:4b4a)
	dw 36
	INCBIN "gfx/duelists/amy.2bpp"

IsaacGfx:: ; 9cd8c (27:4d8c)
	dw 36
	INCBIN "gfx/duelists/isaac.2bpp"

MitchGfx:: ; 9cfce (27:4fce)
	dw 36
	INCBIN "gfx/duelists/mitch.2bpp"

GeneGfx:: ; 9d210 (27:5210)
	dw 36
	INCBIN "gfx/duelists/gene.2bpp"

MurrayGfx:: ; 9d452 (27:5452)
	dw 36
	INCBIN "gfx/duelists/murray.2bpp"

CourtneyGfx:: ; 9d694 (27:5694)
	dw 36
	INCBIN "gfx/duelists/courtney.2bpp"

SteveGfx:: ; 9d8d6 (27:58d6)
	dw 36
	INCBIN "gfx/duelists/steve.2bpp"

JackGfx:: ; 9db18 (27:5b18)
	dw 36
	INCBIN "gfx/duelists/jack.2bpp"

RodGfx:: ; 9dd5a (27:5d5a)
	dw 36
	INCBIN "gfx/duelists/rod.2bpp"

JosephGfx:: ; 9df9c (27:5f9c)
	dw 36
	INCBIN "gfx/duelists/joseph.2bpp"

DavidGfx:: ; 9e1de (27:61de)
	dw 36
	INCBIN "gfx/duelists/david.2bpp"

ErikGfx:: ; 9e420 (27:6420)
	dw 36
	INCBIN "gfx/duelists/erik.2bpp"

JohnGfx:: ; 9e662 (27:6662)
	dw 36
	INCBIN "gfx/duelists/john.2bpp"

AdamGfx:: ; 9e8a4 (27:68a4)
	dw 36
	INCBIN "gfx/duelists/adam.2bpp"

JonathanGfx:: ; 9eae6 (27:6ae6)
	dw 36
	INCBIN "gfx/duelists/jonathan.2bpp"

JoshuaGfx:: ; 9ed28 (27:6d28)
	dw 36
	INCBIN "gfx/duelists/joshua.2bpp"

NicholasGfx:: ; 9ef6a (27:6f6a)
	dw 36
	INCBIN "gfx/duelists/nicholas.2bpp"

BrandonGfx:: ; 9f1ac (27:71ac)
	dw 36
	INCBIN "gfx/duelists/brandon.2bpp"

MatthewGfx:: ; 9f3ee (27:73ee)
	dw 36
	INCBIN "gfx/duelists/matthew.2bpp"

RyanGfx:: ; 9f630 (27:7630)
	dw 36
	INCBIN "gfx/duelists/ryan.2bpp"

AndrewGfx:: ; 9f872 (27:7872)
	dw 36
	INCBIN "gfx/duelists/andrew.2bpp"

ChrisGfx:: ; 9fab4 (27:7ab4)
	dw 36
	INCBIN "gfx/duelists/chris.2bpp"

MichaelGfx:: ; 9fcf6 (27:7cf6)
	dw 36
	INCBIN "gfx/duelists/michael.2bpp"

Duel63Gfx:: ; 9ff38 (27:7f38)
	dw $a
	INCBIN "gfx/duel/anims/63.2bpp"

Duel64Gfx:: ; 9ffda (27:7fda)
	dw $2
	INCBIN "gfx/duel/anims/64.2bpp"

SECTION "Gfx 10", ROMX

DanielGfx:: ; a0000 (28:4000)
	dw 36
	INCBIN "gfx/duelists/daniel.2bpp"

RobertGfx:: ; a0242 (28:4242)
	dw 36
	INCBIN "gfx/duelists/robert.2bpp"

BrittanyGfx:: ; a0484 (28:4484)
	dw 36
	INCBIN "gfx/duelists/brittany.2bpp"

KristinGfx:: ; a06c6 (28:46c6)
	dw 36
	INCBIN "gfx/duelists/kristin.2bpp"

HeatherGfx:: ; a0908 (28:4908)
	dw 36
	INCBIN "gfx/duelists/heather.2bpp"

SaraGfx:: ; a0b4a (28:4b4a)
	dw 36
	INCBIN "gfx/duelists/sara.2bpp"

AmandaGfx:: ; a0d8c (28:4d8c)
	dw 36
	INCBIN "gfx/duelists/amanda.2bpp"

JenniferGfx:: ; a0fce (28:4fce)
	dw 36
	INCBIN "gfx/duelists/jennifer.2bpp"

JessicaGfx:: ; a1210 (28:5210)
	dw 36
	INCBIN "gfx/duelists/jessica.2bpp"

StephanieGfx:: ; a1452 (28:5452)
	dw 36
	INCBIN "gfx/duelists/stephanie.2bpp"

AaronGfx:: ; a1694 (28:5694)
	dw 36
	INCBIN "gfx/duelists/aaron.2bpp"

OWIshiharaGfx:: ; a18d6 (28:58d6)
	dw $14
	INCBIN "gfx/overworld_sprites/ishihara.2bpp"

OWImakuniGfx:: ; a1a18 (28:5a18)
	dw $14
	INCBIN "gfx/overworld_sprites/imakuni.2bpp"

OWNikkiGfx:: ; a1b5a (28:5b5a)
	dw $14
	INCBIN "gfx/overworld_sprites/nikki.2bpp"

OWRickGfx:: ; a1c9c (28:5c9c)
	dw $14
	INCBIN "gfx/overworld_sprites/rick.2bpp"

OWKenGfx:: ; a1dde (28:5dde)
	dw $14
	INCBIN "gfx/overworld_sprites/ken.2bpp"

OWAmyGfx:: ; a1f20 (28:5f20)
	dw $1b
	INCBIN "gfx/overworld_sprites/amy.2bpp"

OWIsaacGfx:: ; a20d2 (28:60d2)
	dw $14
	INCBIN "gfx/overworld_sprites/isaac.2bpp"

OWMitchGfx:: ; a2214 (28:6214)
	dw $14
	INCBIN "gfx/overworld_sprites/mitch.2bpp"

OWGeneGfx:: ; a2356 (28:6356)
	dw $14
	INCBIN "gfx/overworld_sprites/gene.2bpp"

OWMurrayGfx:: ; a2498 (28:6498)
	dw $14
	INCBIN "gfx/overworld_sprites/murray.2bpp"

OWCourtneyGfx:: ; a25da (28:65da)
	dw $14
	INCBIN "gfx/overworld_sprites/courtney.2bpp"

OWSteveGfx:: ; a271c (28:671c)
	dw $14
	INCBIN "gfx/overworld_sprites/steve.2bpp"

OWJackGfx:: ; a285e (28:685e)
	dw $14
	INCBIN "gfx/overworld_sprites/jack.2bpp"

OWRodGfx:: ; a29a0 (28:69a0)
	dw $14
	INCBIN "gfx/overworld_sprites/rod.2bpp"

OWBoyGfx:: ; a2ae2 (28:6ae2)
	dw $14
	INCBIN "gfx/overworld_sprites/youngster.2bpp"

OWLadGfx:: ; a2c24 (28:6c24)
	dw $14
	INCBIN "gfx/overworld_sprites/lad.2bpp"

OWSpecsGfx:: ; a2d66 (28:6d66)
	dw $14
	INCBIN "gfx/overworld_sprites/specs.2bpp"

OWButchGfx:: ; a2ea8 (28:6ea8)
	dw $14
	INCBIN "gfx/overworld_sprites/butch.2bpp"

OWManiaGfx:: ; a2fea (28:6fea)
	dw $14
	INCBIN "gfx/overworld_sprites/mania.2bpp"

OWJoshuaGfx:: ; a312c (28:712c)
	dw $14
	INCBIN "gfx/overworld_sprites/joshua.2bpp"

OWHoodGfx:: ; a326e (28:726e)
	dw $14
	INCBIN "gfx/overworld_sprites/hood.2bpp"

OWTechGfx:: ; a33b0 (28:73b0)
	dw $14
	INCBIN "gfx/overworld_sprites/tech.2bpp"

OWChapGfx:: ; a34f2 (28:74f2)
	dw $14
	INCBIN "gfx/overworld_sprites/chap.2bpp"

OWManGfx:: ; a3634 (28:7634)
	dw $14
	INCBIN "gfx/overworld_sprites/man.2bpp"

OWPappyGfx:: ; a3776 (28:7776)
	dw $14
	INCBIN "gfx/overworld_sprites/pappy.2bpp"

OWGirlGfx:: ; a38b8 (28:78b8)
	dw $14
	INCBIN "gfx/overworld_sprites/girl.2bpp"

OWLass1Gfx:: ; a39fa (28:79fa)
	dw $14
	INCBIN "gfx/overworld_sprites/lass1.2bpp"

OWLass2Gfx:: ; a3b3c (28:7b3c)
	dw $14
	INCBIN "gfx/overworld_sprites/lass2.2bpp"

OWLass3Gfx:: ; a3c7e (28:7c7e)
	dw $14
	INCBIN "gfx/overworld_sprites/lass3.2bpp"

OWSwimmerGfx:: ; a3dc0 (28:7dc0)
	dw $14
	INCBIN "gfx/overworld_sprites/swimmer.2bpp"

DuelGlowGfx:: ; a3f02 (28:7f02)
	dw $b
	INCBIN "gfx/duel/anims/glow.2bpp"

Duel66Gfx:: ; a3fb4 (28:7fb4)
	dw $4
	INCBIN "gfx/duel/anims/66.2bpp"

Palette117:: ; a3ff6 (28:7ff6)
	db 0
	db 1

	rgb 27, 27, 24
	rgb 31, 31,  0
	rgb 31,  0,  0
	rgb  0,  8, 19

SECTION "Gfx 11", ROMX

OWGalGfx:: ; a4000 (29:4000)
	dw $14
	INCBIN "gfx/overworld_sprites/gal.2bpp"

OWWomanGfx:: ; a4142 (29:4142)
	dw $14
	INCBIN "gfx/overworld_sprites/woman.2bpp"

OWGrannyGfx:: ; a4284 (29:4284)
	dw $14
	INCBIN "gfx/overworld_sprites/granny.2bpp"

Duel0Gfx:: ; a43c6 (29:43c6)
	dw $16
	INCBIN "gfx/duel/anims/0.2bpp"

Duel1Gfx:: ; a4528 (29:4528)
	dw $06
	INCBIN "gfx/duel/anims/1.2bpp"

Duel2Gfx:: ; a458a (29:458a)
	dw $08
	INCBIN "gfx/duel/anims/2.2bpp"

Duel3Gfx:: ; a460c (29:460c)
	dw $09
	INCBIN "gfx/duel/anims/3.2bpp"

Duel4Gfx:: ; a469e (29:469e)
	dw $12
	INCBIN "gfx/duel/anims/4.2bpp"

Duel5Gfx:: ; a47c0 (29:47c0)
	dw $09
	INCBIN "gfx/duel/anims/5.2bpp"

Duel6Gfx:: ; a4852 (29:4852)
	dw $11
	INCBIN "gfx/duel/anims/6.2bpp"

Duel7Gfx:: ; a4964 (29:4964)
	dw $2d
	INCBIN "gfx/duel/anims/7.2bpp"

Duel8Gfx:: ; a4c36 (29:4c36)
	dw $0d
	INCBIN "gfx/duel/anims/8.2bpp"

Duel9Gfx:: ; a4d08 (29:4d08)
	dw $1c
	INCBIN "gfx/duel/anims/9.2bpp"

Duel10Gfx:: ; a4eca (29:4eca)
	dw $4c
	INCBIN "gfx/duel/anims/10.2bpp"

Duel11Gfx:: ; a538c (29:538c)
	dw $1b
	INCBIN "gfx/duel/anims/11.2bpp"

Duel12Gfx:: ; a553e (29:553e)
	dw $07
	INCBIN "gfx/duel/anims/12.2bpp"

Duel13Gfx:: ; a55b0 (29:55b0)
	dw $0c
	INCBIN "gfx/duel/anims/13.2bpp"

Duel14Gfx:: ; a5672 (29:5672)
	dw $22
	INCBIN "gfx/duel/anims/14.2bpp"

Duel15Gfx:: ; a5894 (29:5894)
	dw $20
	INCBIN "gfx/duel/anims/15.2bpp"

Duel16Gfx:: ; a5a96 (29:5a96)
	dw $0a
	INCBIN "gfx/duel/anims/16.2bpp"

Duel17Gfx:: ; a5b38 (29:5b38)
	dw $25
	INCBIN "gfx/duel/anims/17.2bpp"

Duel18Gfx:: ; a5d8a (29:5d8a)
	dw $18
	INCBIN "gfx/duel/anims/18.2bpp"

Duel19Gfx:: ; a5f0c (29:5f0c)
	dw $1b
	INCBIN "gfx/duel/anims/19.2bpp"

Duel20Gfx:: ; a60be (29:60be)
	dw $08
	INCBIN "gfx/duel/anims/20.2bpp"

Duel21Gfx:: ; a6140 (29:6140)
	dw $0d
	INCBIN "gfx/duel/anims/21.2bpp"

Duel22Gfx:: ; a6212 (29:6212)
	dw $22
	INCBIN "gfx/duel/anims/22.2bpp"

Duel23Gfx:: ; a6434 (29:6434)
	dw $0c
	INCBIN "gfx/duel/anims/23.2bpp"

Duel24Gfx:: ; a64f6 (29:64f6)
	dw $25
	INCBIN "gfx/duel/anims/24.2bpp"

Duel25Gfx:: ; a6748 (29:6748)
	dw $22
	INCBIN "gfx/duel/anims/25.2bpp"

Duel26Gfx:: ; a696a (29:696a)
	dw $0c
	INCBIN "gfx/duel/anims/26.2bpp"

Duel27Gfx:: ; a6a2c (29:6a2c)
	dw $4c
	INCBIN "gfx/duel/anims/27.2bpp"

Duel28Gfx:: ; a6eee (29:6eee)
	dw $08
	INCBIN "gfx/duel/anims/28.2bpp"

Duel29Gfx:: ; a6f70 (29:6f70)
	dw $07
	INCBIN "gfx/duel/anims/29.2bpp"

Duel30Gfx:: ; a6fe2 (29:6fe2)
	dw $1a
	INCBIN "gfx/duel/anims/30.2bpp"

Duel31Gfx:: ; a7184 (29:7184)
	dw $0a
	INCBIN "gfx/duel/anims/31.2bpp"

Duel32Gfx:: ; a7226 (29:7226)
	dw $2e
	INCBIN "gfx/duel/anims/32.2bpp"

Duel33Gfx:: ; a7508 (29:7508)
	dw $08
	INCBIN "gfx/duel/anims/33.2bpp"

Duel34Gfx:: ; a758a (29:758a)
	dw $07
	INCBIN "gfx/duel/anims/34.2bpp"

Duel35Gfx:: ; a75fc (29:75fc)
	dw $1c
	INCBIN "gfx/duel/anims/35.2bpp"

Duel36Gfx:: ; a77be (29:77be)
	dw $08
	INCBIN "gfx/duel/anims/36.2bpp"

Duel37Gfx:: ; a7840 (29:7840)
	dw $0b
	INCBIN "gfx/duel/anims/37.2bpp"

Duel38Gfx:: ; a78f2 (29:78f2)
	dw $1c
	INCBIN "gfx/duel/anims/38.2bpp"

Duel39Gfx:: ; a7ab4 (29:7ab4)
	dw $16
	INCBIN "gfx/duel/anims/39.2bpp"

Duel40Gfx:: ; a7c16 (29:7c16)
	dw $10
	INCBIN "gfx/duel/anims/40.2bpp"

Duel41Gfx:: ; a7d18 (29:7d18)
	dw $0f
	INCBIN "gfx/duel/anims/41.2bpp"

Duel42Gfx:: ; a7e0a (29:7e0a)
	dw $07
	INCBIN "gfx/duel/anims/42.2bpp"

Duel43Gfx:: ; a7e7c (29:7e7c)
	dw $0a
	INCBIN "gfx/duel/anims/43.2bpp"

Duel44Gfx:: ; a7f1e (29:7f1e)
	dw $09
	INCBIN "gfx/duel/anims/44.2bpp"

Duel45Gfx:: ; a7fb0 (29:7fb0)
	dw $03
	INCBIN "gfx/duel/anims/45.2bpp"

AnimData6:: ; a7fe2 (29:7fe2)
	frame_table AnimFrameTable1
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

SECTION "Gfx 12", ROMX

Duel46Gfx:: ; a8000 (2a:4000)
	dw $08
	INCBIN "gfx/duel/anims/46.2bpp"

Duel47Gfx:: ; a8082 (2a:4082)
	dw $0f
	INCBIN "gfx/duel/anims/47.2bpp"

Duel48Gfx:: ; a8174 (2a:4174)
	dw $03
	INCBIN "gfx/duel/anims/48.2bpp"

Duel49Gfx:: ; a81a6 (2a:41a6)
	dw $05
	INCBIN "gfx/duel/anims/49.2bpp"

Duel50Gfx:: ; a81f8 (2a:41f8)
	dw $17
	INCBIN "gfx/duel/anims/50.2bpp"

Duel51Gfx:: ; a836a (2a:436a)
	dw $36
	INCBIN "gfx/duel/anims/51.2bpp"

Duel52Gfx:: ; a86cc (2a:46cc)
	dw $0b
	INCBIN "gfx/duel/anims/52.2bpp"

Duel53Gfx:: ; a877e (2a:477e)
	dw $06
	INCBIN "gfx/duel/anims/53.2bpp"

Duel54Gfx:: ; a87e0 (2a:47e0)
	dw $16
	INCBIN "gfx/duel/anims/54.2bpp"

BoosterPackOAMGfx:: ; a8942 (2a:4942)
	dw $20
	INCBIN "gfx/booster_packs/oam.2bpp"

PressStartGfx:: ; a8b44 (2a:4b44)
	dw $14
	INCBIN "gfx/titlescreen/press_start.2bpp"

GrassGfx:: ; a8c86 (2a:4c86)
	dw $04
	INCBIN "gfx/titlescreen/energies/grass.2bpp"

FireGfx:: ; a8cc8 (2a:4cc8)
	dw $04
	INCBIN "gfx/titlescreen/energies/fire.2bpp"

WaterGfx:: ; a8d0a (2a:4d0a)
	dw $04
	INCBIN "gfx/titlescreen/energies/water.2bpp"

ColorlessGfx:: ; a8d4c (2a:4d4c)
	dw $04
	INCBIN "gfx/titlescreen/energies/colorless.2bpp"

LightningGfx:: ; a8d8e (2a:4d8e)
	dw $04
	INCBIN "gfx/titlescreen/energies/lightning.2bpp"

PsychicGfx:: ; a8dd0 (2a:4dd0)
	dw $04
	INCBIN "gfx/titlescreen/energies/psychic.2bpp"

FightingGfx:: ; a8e12 (2a:4e12)
	dw $04
	INCBIN "gfx/titlescreen/energies/fighting.2bpp"

SECTION "Anims 1", ROMX
	INCLUDE "data/anims1.asm"

SECTION "Anims 2", ROMX
	INCLUDE "data/anims2.asm"

SECTION "Anims 3", ROMX
	INCLUDE "data/anims3.asm"

Palette31:: ; b3feb (2c:7feb)
	db 1, %11010010
	db 1

	rgb  0,  0,  0
	rgb 31, 31,  7
	rgb 31, 24,  6
	rgb 11,  3,  0

Palette119:: ; b3ff6 (2c:7ff6)
	db 0
	db 1

	rgb 28, 28, 24
	rgb 28, 16, 12
	rgb 28,  4,  8
	rgb  0,  0,  8

SECTION "Anims 4", ROMX
	INCLUDE "data/anims4.asm"

SECTION "Palettes1", ROMX
	INCLUDE "data/palettes1.asm"

SECTION "Palettes2", ROMX
	INCLUDE "data/palettes2.asm"

SECTION "Card Gfx 1", ROMX

CardGraphics:: ; c4000 (31:4000)

GrassEnergyCardGfx:: ; c4000 (31:4000)
	INCBIN "gfx/cards/grassenergy.2bpp"
	INCBIN "gfx/cards/grassenergy.pal"

FireEnergyCardGfx:: ; c4308 (31:4308)
	INCBIN "gfx/cards/fireenergy.2bpp"
	INCBIN "gfx/cards/fireenergy.pal"

WaterEnergyCardGfx:: ; c4610 (31:4610)
	INCBIN "gfx/cards/waterenergy.2bpp"
	INCBIN "gfx/cards/waterenergy.pal"

LightningEnergyCardGfx:: ; c4918 (31:4918)
	INCBIN "gfx/cards/lightningenergy.2bpp"
	INCBIN "gfx/cards/lightningenergy.pal"

FightingEnergyCardGfx:: ; c4c20 (31:4c20)
	INCBIN "gfx/cards/fightingenergy.2bpp"
	INCBIN "gfx/cards/fightingenergy.pal"

PsychicEnergyCardGfx:: ; c4f28 (31:4f28)
	INCBIN "gfx/cards/psychicenergy.2bpp"
	INCBIN "gfx/cards/psychicenergy.pal"

DoubleColorlessEnergyCardGfx:: ; c5230 (31:5230)
	INCBIN "gfx/cards/doublecolorlessenergy.2bpp"
	INCBIN "gfx/cards/doublecolorlessenergy.pal"

CaterpieCardGfx:: 
    INCBIN "gfx/cards/caterpie.2bpp"
    INCBIN "gfx/cards/caterpie.pal"

MetapodCardGfx:: 
    INCBIN "gfx/cards/metapod.2bpp"
    INCBIN "gfx/cards/metapod.pal"

ButterfreeCardGfx:: 
    INCBIN "gfx/cards/butterfree.2bpp"
    INCBIN "gfx/cards/butterfree.pal"

WeedleCardGfx:: 
    INCBIN "gfx/cards/weedle.2bpp"
    INCBIN "gfx/cards/weedle.pal"

KakunaCardGfx:: 
    INCBIN "gfx/cards/kakuna.2bpp"
    INCBIN "gfx/cards/kakuna.pal"

BeedrillCardGfx:: 
    INCBIN "gfx/cards/beedrill.2bpp"
    INCBIN "gfx/cards/beedrill.pal"

OddishCardGfx:: 
    INCBIN "gfx/cards/oddish.2bpp"
    INCBIN "gfx/cards/oddish.pal"

GloomCardGfx:: 
    INCBIN "gfx/cards/gloom.2bpp"
    INCBIN "gfx/cards/gloom.pal"

BellossomCardGfx:: 
    INCBIN "gfx/cards/bellossom.2bpp"
    INCBIN "gfx/cards/bellossom.pal"

ParasCardGfx:: 
    INCBIN "gfx/cards/paras.2bpp"
    INCBIN "gfx/cards/paras.pal"

ParasectCardGfx:: 
    INCBIN "gfx/cards/parasect.2bpp"
    INCBIN "gfx/cards/parasect.pal"

ZubatCardGfx:: 
    INCBIN "gfx/cards/zubat.2bpp"
    INCBIN "gfx/cards/zubat.pal"

GolbatCardGfx:: 
    INCBIN "gfx/cards/golbat.2bpp"
    INCBIN "gfx/cards/golbat.pal"

CrobatCardGfx:: 
    INCBIN "gfx/cards/crobat.2bpp"
    INCBIN "gfx/cards/crobat.pal"

ScytherCardGfx:: 
    INCBIN "gfx/cards/scyther.2bpp"
    INCBIN "gfx/cards/scyther.pal"

Chikorita1CardGfx:: 
    INCBIN "gfx/cards/chikorita1.2bpp"
    INCBIN "gfx/cards/chikorita1.pal"

Chikorita2CardGfx:: 
    INCBIN "gfx/cards/chikorita2.2bpp"
    INCBIN "gfx/cards/chikorita2.pal"

Bayleef1CardGfx:: 
    INCBIN "gfx/cards/bayleef1.2bpp"
    INCBIN "gfx/cards/bayleef1.pal"

Bayleef2CardGfx:: 
    INCBIN "gfx/cards/bayleef2.2bpp"
    INCBIN "gfx/cards/bayleef2.pal"

Meganium1CardGfx:: 
    INCBIN "gfx/cards/meganium1.2bpp"
    INCBIN "gfx/cards/meganium1.pal"

Meganium2CardGfx:: 
    INCBIN "gfx/cards/meganium2.2bpp"
    INCBIN "gfx/cards/meganium2.pal"

LedybaCardGfx:: 
    INCBIN "gfx/cards/ledyba.2bpp"
    INCBIN "gfx/cards/ledyba.pal"

LedianCardGfx:: 
    INCBIN "gfx/cards/ledian.2bpp"
    INCBIN "gfx/cards/ledian.pal"

Spinarak1CardGfx:: 
    INCBIN "gfx/cards/spinarak1.2bpp"
    INCBIN "gfx/cards/spinarak1.pal"

Spinarak2CardGfx:: 
    INCBIN "gfx/cards/spinarak2.2bpp"
    INCBIN "gfx/cards/spinarak2.pal"

AriadosCardGfx:: 
    INCBIN "gfx/cards/ariados.2bpp"
    INCBIN "gfx/cards/ariados.pal"

Hoppip1CardGfx:: 
    INCBIN "gfx/cards/hoppip1.2bpp"
    INCBIN "gfx/cards/hoppip1.pal"

Hoppip2CardGfx:: 
    INCBIN "gfx/cards/hoppip2.2bpp"
    INCBIN "gfx/cards/hoppip2.pal"

Skiploom1CardGfx:: 
    INCBIN "gfx/cards/skiploom1.2bpp"
    INCBIN "gfx/cards/skiploom1.pal"

Skiploom2CardGfx:: 
    INCBIN "gfx/cards/skiploom2.2bpp"
    INCBIN "gfx/cards/skiploom2.pal"

Jumpluff1CardGfx:: 
    INCBIN "gfx/cards/jumpluff1.2bpp"
    INCBIN "gfx/cards/jumpluff1.pal"

Jumpluff2CardGfx:: 
    INCBIN "gfx/cards/jumpluff2.2bpp"
    INCBIN "gfx/cards/jumpluff2.pal"

SunkernCardGfx:: 
    INCBIN "gfx/cards/sunkern.2bpp"
    INCBIN "gfx/cards/sunkern.pal"

SunfloraCardGfx:: 
    INCBIN "gfx/cards/sunflora.2bpp"
    INCBIN "gfx/cards/sunflora.pal"

YanmaCardGfx:: 
    INCBIN "gfx/cards/yanma.2bpp"
    INCBIN "gfx/cards/yanma.pal"

PinecoCardGfx:: 
    INCBIN "gfx/cards/pineco.2bpp"
    INCBIN "gfx/cards/pineco.pal"

HeracrossCardGfx:: 
    INCBIN "gfx/cards/heracross.2bpp"
    INCBIN "gfx/cards/heracross.pal"

Celebi1CardGfx:: 
    INCBIN "gfx/cards/celebi1.2bpp"
    INCBIN "gfx/cards/celebi1.pal"

MagmarCardGfx:: 
    INCBIN "gfx/cards/magmar.2bpp"
    INCBIN "gfx/cards/magmar.pal"

Cyndaquil1CardGfx:: 
    INCBIN "gfx/cards/cyndaquil1.2bpp"
    INCBIN "gfx/cards/cyndaquil1.pal"

Cyndaquil2CardGfx:: 
    INCBIN "gfx/cards/cyndaquil2.2bpp"
    INCBIN "gfx/cards/cyndaquil2.pal"

Quilava1CardGfx:: 
    INCBIN "gfx/cards/quilava1.2bpp"
    INCBIN "gfx/cards/quilava1.pal"

Quilava2CardGfx:: 
    INCBIN "gfx/cards/quilava2.2bpp"
    INCBIN "gfx/cards/quilava2.pal"

Typhlosion1CardGfx:: 
    INCBIN "gfx/cards/typhlosion1.2bpp"
    INCBIN "gfx/cards/typhlosion1.pal"

Typhlosion2CardGfx:: 
    INCBIN "gfx/cards/typhlosion2.2bpp"
    INCBIN "gfx/cards/typhlosion2.pal"

SlugmaCardGfx:: 
    INCBIN "gfx/cards/slugma.2bpp"
    INCBIN "gfx/cards/slugma.pal"

MagcargoCardGfx:: 
    INCBIN "gfx/cards/magcargo.2bpp"
    INCBIN "gfx/cards/magcargo.pal"

MagbyCardGfx:: 
    INCBIN "gfx/cards/magby.2bpp"
    INCBIN "gfx/cards/magby.pal"

Houndour1CardGfx:: 
    INCBIN "gfx/cards/houndour1.2bpp"
    INCBIN "gfx/cards/houndour1.pal"

Entei1CardGfx:: 
    INCBIN "gfx/cards/entei1.2bpp"
    INCBIN "gfx/cards/entei1.pal"

Entei2CardGfx:: 
    INCBIN "gfx/cards/entei2.2bpp"
    INCBIN "gfx/cards/entei2.pal"

HoOh1CardGfx:: 
    INCBIN "gfx/cards/hooh1.2bpp"
    INCBIN "gfx/cards/hooh1.pal"

PoliwagCardGfx:: 
    INCBIN "gfx/cards/poliwag.2bpp"
    INCBIN "gfx/cards/poliwag.pal"

PoliwhirlCardGfx:: 
    INCBIN "gfx/cards/poliwhirl.2bpp"
    INCBIN "gfx/cards/poliwhirl.pal"

PolitoedCardGfx:: 
    INCBIN "gfx/cards/politoed.2bpp"
    INCBIN "gfx/cards/politoed.pal"

StaryuCardGfx:: 
    INCBIN "gfx/cards/staryu.2bpp"
    INCBIN "gfx/cards/staryu.pal"

GoldeenCardGfx:: 
    INCBIN "gfx/cards/goldeen.2bpp"
    INCBIN "gfx/cards/goldeen.pal"

SeakingCardGfx:: 
    INCBIN "gfx/cards/seaking.2bpp"
    INCBIN "gfx/cards/seaking.pal"

HorseaCardGfx:: 
    INCBIN "gfx/cards/horsea.2bpp"
    INCBIN "gfx/cards/horsea.pal"

SeadraCardGfx:: 
    INCBIN "gfx/cards/seadra.2bpp"
    INCBIN "gfx/cards/seadra.pal"

Kingdra1CardGfx:: 
    INCBIN "gfx/cards/kingdra1.2bpp"
    INCBIN "gfx/cards/kingdra1.pal"

Kingdra2CardGfx:: 
    INCBIN "gfx/cards/kingdra2.2bpp"
    INCBIN "gfx/cards/kingdra2.pal"

JynxCardGfx:: 
    INCBIN "gfx/cards/jynx.2bpp"
    INCBIN "gfx/cards/jynx.pal"

KabutoCardGfx:: 
    INCBIN "gfx/cards/kabuto.2bpp"
    INCBIN "gfx/cards/kabuto.pal"

KabutopsCardGfx:: 
    INCBIN "gfx/cards/kabutops.2bpp"
    INCBIN "gfx/cards/kabutops.pal"

OmanyteCardGfx:: 
    INCBIN "gfx/cards/omanyte.2bpp"
    INCBIN "gfx/cards/omanyte.pal"

OmastarCardGfx:: 
    INCBIN "gfx/cards/omastar.2bpp"
    INCBIN "gfx/cards/omastar.pal"

Totodile1CardGfx:: 
    INCBIN "gfx/cards/totodile1.2bpp"
    INCBIN "gfx/cards/totodile1.pal"

Totodile2CardGfx:: 
    INCBIN "gfx/cards/totodile2.2bpp"
    INCBIN "gfx/cards/totodile2.pal"

Croconaw1CardGfx:: 
    INCBIN "gfx/cards/croconaw1.2bpp"
    INCBIN "gfx/cards/croconaw1.pal"

Croconaw2CardGfx:: 
    INCBIN "gfx/cards/croconaw2.2bpp"
    INCBIN "gfx/cards/croconaw2.pal"

Feraligatr1CardGfx:: 
    INCBIN "gfx/cards/feraligatr1.2bpp"
    INCBIN "gfx/cards/feraligatr1.pal"

Feraligatr2CardGfx:: 
    INCBIN "gfx/cards/feraligatr2.2bpp"
    INCBIN "gfx/cards/feraligatr2.pal"

Wooper1CardGfx:: 
    INCBIN "gfx/cards/wooper1.2bpp"
    INCBIN "gfx/cards/wooper1.pal"

Wooper2CardGfx:: 
    INCBIN "gfx/cards/wooper2.2bpp"
    INCBIN "gfx/cards/wooper2.pal"

Quagsire1CardGfx:: 
    INCBIN "gfx/cards/quagsire1.2bpp"
    INCBIN "gfx/cards/quagsire1.pal"

Quagsire2CardGfx:: 
    INCBIN "gfx/cards/quagsire2.2bpp"
    INCBIN "gfx/cards/quagsire2.pal"

MarillCardGfx:: 
    INCBIN "gfx/cards/marill.2bpp"
    INCBIN "gfx/cards/marill.pal"

AzumarillCardGfx:: 
    INCBIN "gfx/cards/azumarill.2bpp"
    INCBIN "gfx/cards/azumarill.pal"

RemoraidCardGfx:: 
    INCBIN "gfx/cards/remoraid.2bpp"
    INCBIN "gfx/cards/remoraid.pal"

OctilleryCardGfx:: 
    INCBIN "gfx/cards/octillery.2bpp"
    INCBIN "gfx/cards/octillery.pal"

CorsolaCardGfx:: 
    INCBIN "gfx/cards/corsola.2bpp"
    INCBIN "gfx/cards/corsola.pal"

MantineCardGfx:: 
    INCBIN "gfx/cards/mantine.2bpp"
    INCBIN "gfx/cards/mantine.pal"

Swinub1CardGfx:: 
    INCBIN "gfx/cards/swinub1.2bpp"
    INCBIN "gfx/cards/swinub1.pal"

Piloswine1CardGfx:: 
    INCBIN "gfx/cards/piloswine1.2bpp"
    INCBIN "gfx/cards/piloswine1.pal"

QuilfishCardGfx:: 
    INCBIN "gfx/cards/quilfish.2bpp"
    INCBIN "gfx/cards/quilfish.pal"

Suicune1CardGfx:: 
    INCBIN "gfx/cards/suicune1.2bpp"
    INCBIN "gfx/cards/suicune1.pal"

Suicune2CardGfx:: 
    INCBIN "gfx/cards/suicune2.2bpp"
    INCBIN "gfx/cards/suicune2.pal"

PichuCardGfx:: 
    INCBIN "gfx/cards/pichu.2bpp"
    INCBIN "gfx/cards/pichu.pal"

PikachuCardGfx:: 
    INCBIN "gfx/cards/pikachu.2bpp"
    INCBIN "gfx/cards/pikachu.pal"

RaichuCardGfx:: 
    INCBIN "gfx/cards/raichu.2bpp"
    INCBIN "gfx/cards/raichu.pal"

ElekidCardGfx:: 
    INCBIN "gfx/cards/elekid.2bpp"
    INCBIN "gfx/cards/elekid.pal"

ElectabuzzCardGfx:: 
    INCBIN "gfx/cards/electabuzz.2bpp"
    INCBIN "gfx/cards/electabuzz.pal"

Mareep1CardGfx:: 
    INCBIN "gfx/cards/mareep1.2bpp"
    INCBIN "gfx/cards/mareep1.pal"

Mareep2CardGfx:: 
    INCBIN "gfx/cards/mareep2.2bpp"
    INCBIN "gfx/cards/mareep2.pal"

Flaaffy1CardGfx:: 
    INCBIN "gfx/cards/flaaffy1.2bpp"
    INCBIN "gfx/cards/flaaffy1.pal"

Flaaffy2CardGfx:: 
    INCBIN "gfx/cards/flaaffy2.2bpp"
    INCBIN "gfx/cards/flaaffy2.pal"

Ampharos1CardGfx:: 
    INCBIN "gfx/cards/ampharos1.2bpp"
    INCBIN "gfx/cards/ampharos1.pal"

Ampharos2CardGfx:: 
    INCBIN "gfx/cards/ampharos2.2bpp"
    INCBIN "gfx/cards/ampharos2.pal"

Chinchou1CardGfx:: 
    INCBIN "gfx/cards/chinchou1.2bpp"
    INCBIN "gfx/cards/chinchou1.pal"

Chinchou2CardGfx:: 
    INCBIN "gfx/cards/chinchou2.2bpp"
    INCBIN "gfx/cards/chinchou2.pal"

Lanturn1CardGfx:: 
    INCBIN "gfx/cards/lanturn1.2bpp"
    INCBIN "gfx/cards/lanturn1.pal"

Lanturn2CardGfx:: 
    INCBIN "gfx/cards/lanturn2.2bpp"
    INCBIN "gfx/cards/lanturn2.pal"

RaikouCardGfx:: 
    INCBIN "gfx/cards/raikou.2bpp"
    INCBIN "gfx/cards/raikou.pal"

Raikou2CardGfx:: 
    INCBIN "gfx/cards/raikou2.2bpp"
    INCBIN "gfx/cards/raikou2.pal"

GeodudeCardGfx:: 
    INCBIN "gfx/cards/geodude.2bpp"
    INCBIN "gfx/cards/geodude.pal"

GravelerCardGfx:: 
    INCBIN "gfx/cards/graveler.2bpp"
    INCBIN "gfx/cards/graveler.pal"

OnixCardGfx:: 
    INCBIN "gfx/cards/onix.2bpp"
    INCBIN "gfx/cards/onix.pal"

PoliwrathCardGfx:: 
    INCBIN "gfx/cards/poliwrath.2bpp"
    INCBIN "gfx/cards/poliwrath.pal"

AerodactylCardGfx:: 
    INCBIN "gfx/cards/aerodactyl.2bpp"
    INCBIN "gfx/cards/aerodactyl.pal"

Sudowoodo1CardGfx:: 
    INCBIN "gfx/cards/sudowoodo1.2bpp"
    INCBIN "gfx/cards/sudowoodo1.pal"

Sudowoodo2CardGfx:: 
    INCBIN "gfx/cards/sudowoodo2.2bpp"
    INCBIN "gfx/cards/sudowoodo2.pal"

GligarCardGfx:: 
    INCBIN "gfx/cards/gligar.2bpp"
    INCBIN "gfx/cards/gligar.pal"

Shuckle1CardGfx:: 
    INCBIN "gfx/cards/shuckle1.2bpp"
    INCBIN "gfx/cards/shuckle1.pal"

Shuckle2CardGfx:: 
    INCBIN "gfx/cards/shuckle2.2bpp"
    INCBIN "gfx/cards/shuckle2.pal"

Swinub2CardGfx:: 
    INCBIN "gfx/cards/swinub2.2bpp"
    INCBIN "gfx/cards/swinub2.pal"

Piloswine2CardGfx:: 
    INCBIN "gfx/cards/piloswine2.2bpp"
    INCBIN "gfx/cards/piloswine2.pal"

PhanpyCardGfx:: 
    INCBIN "gfx/cards/phanpy.2bpp"
    INCBIN "gfx/cards/phanpy.pal"

DonphanCardGfx:: 
    INCBIN "gfx/cards/donphan.2bpp"
    INCBIN "gfx/cards/donphan.pal"

TyrougeCardGfx:: 
    INCBIN "gfx/cards/tyrouge.2bpp"
    INCBIN "gfx/cards/tyrouge.pal"

HitmontopCardGfx:: 
    INCBIN "gfx/cards/hitmontop.2bpp"
    INCBIN "gfx/cards/hitmontop.pal"

LarvitarCardGfx:: 
    INCBIN "gfx/cards/larvitar.2bpp"
    INCBIN "gfx/cards/larvitar.pal"

PupitarCardGfx:: 
    INCBIN "gfx/cards/pupitar.2bpp"
    INCBIN "gfx/cards/pupitar.pal"

StarmieCardGfx:: 
    INCBIN "gfx/cards/starmie.2bpp"
    INCBIN "gfx/cards/starmie.pal"

SlowpokeCardGfx:: 
    INCBIN "gfx/cards/slowpoke.2bpp"
    INCBIN "gfx/cards/slowpoke.pal"

SlowkingCardGfx:: 
    INCBIN "gfx/cards/slowking.2bpp"
    INCBIN "gfx/cards/slowking.pal"

SmoochumCardGfx:: 
    INCBIN "gfx/cards/smoochum.2bpp"
    INCBIN "gfx/cards/smoochum.pal"

Natu1CardGfx:: 
    INCBIN "gfx/cards/natu1.2bpp"
    INCBIN "gfx/cards/natu1.pal"

Natu2CardGfx:: 
    INCBIN "gfx/cards/natu2.2bpp"
    INCBIN "gfx/cards/natu2.pal"

Xatu1CardGfx:: 
    INCBIN "gfx/cards/xatu1.2bpp"
    INCBIN "gfx/cards/xatu1.pal"

Xatu2CardGfx:: 
    INCBIN "gfx/cards/xatu2.2bpp"
    INCBIN "gfx/cards/xatu2.pal"

Espeon1CardGfx:: 
    INCBIN "gfx/cards/espeon1.2bpp"
    INCBIN "gfx/cards/espeon1.pal"

Espeon2CardGfx:: 
    INCBIN "gfx/cards/espeon2.2bpp"
    INCBIN "gfx/cards/espeon2.pal"

MisdreavusCardGfx:: 
    INCBIN "gfx/cards/misdreavus.2bpp"
    INCBIN "gfx/cards/misdreavus.pal"

WobbuffetCardGfx:: 
    INCBIN "gfx/cards/wobbuffet.2bpp"
    INCBIN "gfx/cards/wobbuffet.pal"

GirafarigCardGfx:: 
    INCBIN "gfx/cards/girafarig.2bpp"
    INCBIN "gfx/cards/girafarig.pal"

Lugia2CardGfx:: 
    INCBIN "gfx/cards/lugia2.2bpp"
    INCBIN "gfx/cards/lugia2.pal"

Celebi2CardGfx:: 
    INCBIN "gfx/cards/celebi2.2bpp"
    INCBIN "gfx/cards/celebi2.pal"

Umbreon1CardGfx:: 
    INCBIN "gfx/cards/umbreon1.2bpp"
    INCBIN "gfx/cards/umbreon1.pal"

Umbreon2CardGfx:: 
    INCBIN "gfx/cards/umbreon2.2bpp"
    INCBIN "gfx/cards/umbreon2.pal"

Sneasel1CardGfx:: 
    INCBIN "gfx/cards/sneasel1.2bpp"
    INCBIN "gfx/cards/sneasel1.pal"

Sneasel2CardGfx:: 
    INCBIN "gfx/cards/sneasel2.2bpp"
    INCBIN "gfx/cards/sneasel2.pal"

Houndour2CardGfx:: 
    INCBIN "gfx/cards/houndour2.2bpp"
    INCBIN "gfx/cards/houndour2.pal"

Houndoom1CardGfx:: 
    INCBIN "gfx/cards/houndoom1.2bpp"
    INCBIN "gfx/cards/houndoom1.pal"

Houndoom2CardGfx:: 
    INCBIN "gfx/cards/houndoom2.2bpp"
    INCBIN "gfx/cards/houndoom2.pal"

Murkrow1CardGfx:: 
    INCBIN "gfx/cards/murkrow1.2bpp"
    INCBIN "gfx/cards/murkrow1.pal"

Murkrow2CardGfx:: 
    INCBIN "gfx/cards/murkrow2.2bpp"
    INCBIN "gfx/cards/murkrow2.pal"

TyranitarCardGfx:: 
    INCBIN "gfx/cards/tyranitar.2bpp"
    INCBIN "gfx/cards/tyranitar.pal"

MagnemiteCardGfx:: 
    INCBIN "gfx/cards/magnemite.2bpp"
    INCBIN "gfx/cards/magnemite.pal"

MagnetonCardGfx:: 
    INCBIN "gfx/cards/magneton.2bpp"
    INCBIN "gfx/cards/magneton.pal"

ForretressCardGfx:: 
    INCBIN "gfx/cards/forretress.2bpp"
    INCBIN "gfx/cards/forretress.pal"

SteelixCardGfx:: 
    INCBIN "gfx/cards/steelix.2bpp"
    INCBIN "gfx/cards/steelix.pal"

ScizorCardGfx:: 
    INCBIN "gfx/cards/scizor.2bpp"
    INCBIN "gfx/cards/scizor.pal"

Skarmory1CardGfx:: 
    INCBIN "gfx/cards/skarmory1.2bpp"
    INCBIN "gfx/cards/skarmory1.pal"

Skarmory2CardGfx:: 
    INCBIN "gfx/cards/skarmory2.2bpp"
    INCBIN "gfx/cards/skarmory2.pal"

CleffaCardGfx:: 
    INCBIN "gfx/cards/cleffa.2bpp"
    INCBIN "gfx/cards/cleffa.pal"

ClefairyCardGfx:: 
    INCBIN "gfx/cards/clefairy.2bpp"
    INCBIN "gfx/cards/clefairy.pal"

IgglybuffCardGfx:: 
    INCBIN "gfx/cards/igglybuff.2bpp"
    INCBIN "gfx/cards/igglybuff.pal"

JigglypuffCardGfx:: 
    INCBIN "gfx/cards/jigglypuff.2bpp"
    INCBIN "gfx/cards/jigglypuff.pal"

ChanseyCardGfx:: 
    INCBIN "gfx/cards/chansey.2bpp"
    INCBIN "gfx/cards/chansey.pal"

BlisseyCardGfx:: 
    INCBIN "gfx/cards/blissey.2bpp"
    INCBIN "gfx/cards/blissey.pal"

FarfetchdCardGfx:: 
    INCBIN "gfx/cards/farfetchd.2bpp"
    INCBIN "gfx/cards/farfetchd.pal"

EeveeCardGfx:: 
    INCBIN "gfx/cards/eevee.2bpp"
    INCBIN "gfx/cards/eevee.pal"

PorygonCardGfx:: 
    INCBIN "gfx/cards/porygon.2bpp"
    INCBIN "gfx/cards/porygon.pal"

PorygonTwoCardGfx:: 
    INCBIN "gfx/cards/porygontwo.2bpp"
    INCBIN "gfx/cards/porygontwo.pal"

Sentret1CardGfx:: 
    INCBIN "gfx/cards/sentret1.2bpp"
    INCBIN "gfx/cards/sentret1.pal"

Sentret2CardGfx:: 
    INCBIN "gfx/cards/sentret2.2bpp"
    INCBIN "gfx/cards/sentret2.pal"

FurretCardGfx:: 
    INCBIN "gfx/cards/furret.2bpp"
    INCBIN "gfx/cards/furret.pal"

HoothootCardGfx:: 
    INCBIN "gfx/cards/hoothoot.2bpp"
    INCBIN "gfx/cards/hoothoot.pal"

NoctowlCardGfx:: 
    INCBIN "gfx/cards/noctowl.2bpp"
    INCBIN "gfx/cards/noctowl.pal"

TogepiCardGfx:: 
    INCBIN "gfx/cards/togepi.2bpp"
    INCBIN "gfx/cards/togepi.pal"

TogeticCardGfx:: 
    INCBIN "gfx/cards/togetic.2bpp"
    INCBIN "gfx/cards/togetic.pal"

Aipom1CardGfx:: 
    INCBIN "gfx/cards/aipom1.2bpp"
    INCBIN "gfx/cards/aipom1.pal"

Aipom2CardGfx:: 
    INCBIN "gfx/cards/aipom2.2bpp"
    INCBIN "gfx/cards/aipom2.pal"

DunsparceCardGfx:: 
    INCBIN "gfx/cards/dunsparce.2bpp"
    INCBIN "gfx/cards/dunsparce.pal"

Snubbull1CardGfx:: 
    INCBIN "gfx/cards/snubbull1.2bpp"
    INCBIN "gfx/cards/snubbull1.pal"

Snubbull2CardGfx:: 
    INCBIN "gfx/cards/snubbull2.2bpp"
    INCBIN "gfx/cards/snubbull2.pal"

GranbullCardGfx:: 
    INCBIN "gfx/cards/granbull.2bpp"
    INCBIN "gfx/cards/granbull.pal"

TeddiursaCardGfx:: 
    INCBIN "gfx/cards/teddiursa.2bpp"
    INCBIN "gfx/cards/teddiursa.pal"

UrsaringCardGfx:: 
    INCBIN "gfx/cards/ursaring.2bpp"
    INCBIN "gfx/cards/ursaring.pal"

DelibirdCardGfx:: 
    INCBIN "gfx/cards/delibird.2bpp"
    INCBIN "gfx/cards/delibird.pal"

Stantler1CardGfx:: 
    INCBIN "gfx/cards/stantler1.2bpp"
    INCBIN "gfx/cards/stantler1.pal"

Stantler2CardGfx:: 
    INCBIN "gfx/cards/stantler2.2bpp"
    INCBIN "gfx/cards/stantler2.pal"

SmeargleCardGfx:: 
    INCBIN "gfx/cards/smeargle.2bpp"
    INCBIN "gfx/cards/smeargle.pal"

MiltankCardGfx:: 
    INCBIN "gfx/cards/miltank.2bpp"
    INCBIN "gfx/cards/miltank.pal"

Lugia2CardGfx:: 
    INCBIN "gfx/cards/lugia2.2bpp"
    INCBIN "gfx/cards/lugia2.pal"

HoOh2CardGfx:: 
    INCBIN "gfx/cards/hooh2.2bpp"
    INCBIN "gfx/cards/hooh2.pal"

ProfessorOakCardGfx:: ; e8f28 (3a:4f28)
	INCBIN "gfx/cards/professoroak.2bpp"
	INCBIN "gfx/cards/professoroak.pal"

ImposterProfessorOakCardGfx:: ; e9230 (3a:5230)
	INCBIN "gfx/cards/imposterprofessoroak.2bpp"
	INCBIN "gfx/cards/imposterprofessoroak.pal"

BillCardGfx:: ; e9538 (3a:5538)
	INCBIN "gfx/cards/bill.2bpp"
	INCBIN "gfx/cards/bill.pal"

MrFujiCardGfx:: ; e9840 (3a:5840)
	INCBIN "gfx/cards/mrfuji.2bpp"
	INCBIN "gfx/cards/mrfuji.pal"

LassCardGfx:: ; e9b48 (3a:5b48)
	INCBIN "gfx/cards/lass.2bpp"
	INCBIN "gfx/cards/lass.pal"

ImakuniCardGfx:: ; e9e50 (3a:5e50)
	INCBIN "gfx/cards/imakuni.2bpp"
	INCBIN "gfx/cards/imakuni.pal"

PokemonTraderCardGfx:: ; ea158 (3a:6158)
	INCBIN "gfx/cards/pokemontrader.2bpp"
	INCBIN "gfx/cards/pokemontrader.pal"

PokemonBreederCardGfx:: ; ea460 (3a:6460)
	INCBIN "gfx/cards/pokemonbreeder.2bpp"
	INCBIN "gfx/cards/pokemonbreeder.pal"

ClefairyDollCardGfx:: ; ea768 (3a:6768)
	INCBIN "gfx/cards/clefairydoll.2bpp"
	INCBIN "gfx/cards/clefairydoll.pal"

MysteriousFossilCardGfx:: ; eaa70 (3a:6a70)
	INCBIN "gfx/cards/mysteriousfossil.2bpp"
	INCBIN "gfx/cards/mysteriousfossil.pal"

EnergyRetrievalCardGfx:: ; ead78 (3a:6d78)
	INCBIN "gfx/cards/energyretrieval.2bpp"
	INCBIN "gfx/cards/energyretrieval.pal"

SuperEnergyRetrievalCardGfx:: ; eb080 (3a:7080)
	INCBIN "gfx/cards/superenergyretrieval.2bpp"
	INCBIN "gfx/cards/superenergyretrieval.pal"

EnergySearchCardGfx:: ; eb388 (3a:7388)
	INCBIN "gfx/cards/energysearch.2bpp"
	INCBIN "gfx/cards/energysearch.pal"

EnergyRemovalCardGfx:: ; eb690 (3a:7690)
	INCBIN "gfx/cards/energyremoval.2bpp"
	INCBIN "gfx/cards/energyremoval.pal"

SuperEnergyRemovalCardGfx:: ; eb998 (3a:7998)
	INCBIN "gfx/cards/superenergyremoval.2bpp"
	INCBIN "gfx/cards/superenergyremoval.pal"

SwitchCardGfx:: ; ebca0 (3a:7ca0)
	INCBIN "gfx/cards/switch.2bpp"
	INCBIN "gfx/cards/switch.pal"

	ds $58

SECTION "Card Gfx 11", ROMX

PokemonCenterCardGfx:: ; ec000 (3b:4000)
	INCBIN "gfx/cards/pokemoncenter.2bpp"
	INCBIN "gfx/cards/pokemoncenter.pal"

PokeBallCardGfx:: ; ec308 (3b:4308)
	INCBIN "gfx/cards/pokeball.2bpp"
	INCBIN "gfx/cards/pokeball.pal"

ScoopUpCardGfx:: ; ec610 (3b:4610)
	INCBIN "gfx/cards/scoopup.2bpp"
	INCBIN "gfx/cards/scoopup.pal"

ComputerSearchCardGfx:: ; ec918 (3b:4918)
	INCBIN "gfx/cards/computersearch.2bpp"
	INCBIN "gfx/cards/computersearch.pal"

PokedexCardGfx:: ; ecc20 (3b:4c20)
	INCBIN "gfx/cards/pokedex.2bpp"
	INCBIN "gfx/cards/pokedex.pal"

PlusPowerCardGfx:: ; ecf28 (3b:4f28)
	INCBIN "gfx/cards/pluspower.2bpp"
	INCBIN "gfx/cards/pluspower.pal"

DefenderCardGfx:: ; ed230 (3b:5230)
	INCBIN "gfx/cards/defender.2bpp"
	INCBIN "gfx/cards/defender.pal"

ItemFinderCardGfx:: ; ed538 (3b:5538)
	INCBIN "gfx/cards/itemfinder.2bpp"
	INCBIN "gfx/cards/itemfinder.pal"

GustOfWindCardGfx:: ; ed840 (3b:5840)
	INCBIN "gfx/cards/gustofwind.2bpp"
	INCBIN "gfx/cards/gustofwind.pal"

DevolutionSprayCardGfx:: ; edb48 (3b:5b48)
	INCBIN "gfx/cards/devolutionspray.2bpp"
	INCBIN "gfx/cards/devolutionspray.pal"

PotionCardGfx:: ; ede50 (3b:5e50)
	INCBIN "gfx/cards/potion.2bpp"
	INCBIN "gfx/cards/potion.pal"

SuperPotionCardGfx:: ; ee158 (3b:6158)
	INCBIN "gfx/cards/superpotion.2bpp"
	INCBIN "gfx/cards/superpotion.pal"

FullHealCardGfx:: ; ee460 (3b:6460)
	INCBIN "gfx/cards/fullheal.2bpp"
	INCBIN "gfx/cards/fullheal.pal"

ReviveCardGfx:: ; ee768 (3b:6768)
	INCBIN "gfx/cards/revive.2bpp"
	INCBIN "gfx/cards/revive.pal"

MaintenanceCardGfx:: ; eea70 (3b:6a70)
	INCBIN "gfx/cards/maintenance.2bpp"
	INCBIN "gfx/cards/maintenance.pal"

PokemonFluteCardGfx:: ; eed78 (3b:6d78)
	INCBIN "gfx/cards/pokemonflute.2bpp"
	INCBIN "gfx/cards/pokemonflute.pal"

GamblerCardGfx:: ; ef080 (3b:7080)
	INCBIN "gfx/cards/gambler.2bpp"
	INCBIN "gfx/cards/gambler.pal"

RecycleCardGfx:: ; ef388 (3b:7388)
	INCBIN "gfx/cards/recycle.2bpp"
	INCBIN "gfx/cards/recycle.pal"
