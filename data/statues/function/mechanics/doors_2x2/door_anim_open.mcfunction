execute unless function statues:feature_flags/check_doors_2x2_flags run return fail

execute if entity @s[y_rotation=0] positioned ~-.5 ~1 ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=1] add doord_init_open_right_dx
execute if entity @s[y_rotation=0] positioned ~-.5 ~ ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=1] add doord_init_open_right_dx
execute if entity @s[y_rotation=0] positioned ~.5 ~1 ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=1] add doord_init_open_left_dx
execute if entity @s[y_rotation=0] positioned ~.5 ~ ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=1] add doord_init_open_left_dx


execute if entity @s[y_rotation=90] positioned ~ ~1 ~-.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=1] add doord_init_open_right_dz
execute if entity @s[y_rotation=90] positioned ~ ~ ~-.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=1] add doord_init_open_right_dz
execute if entity @s[y_rotation=90] positioned ~ ~1 ~.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=1] add doord_init_open_left_dz
execute if entity @s[y_rotation=90] positioned ~ ~ ~.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=1] add doord_init_open_left_dz

tag @e[tag=doord_init_open_right_dx] add doord_init
tag @e[tag=doord_init_open_left_dx] add doord_init
tag @e[tag=doord_init_open_right_dz] add doord_init
tag @e[tag=doord_init_open_left_dz] add doord_init

playsound statues:game.door.small.open block @a ~ ~ ~ 1 1