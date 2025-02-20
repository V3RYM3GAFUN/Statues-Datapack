execute unless function statues:feature_flags/check_doors_2x2_flags run return fail
execute if entity @s[y_rotation=0] align xyz run execute align xyz positioned ~0.5 ~0.5 ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=4] add doord_init_close
execute if entity @s[y_rotation=90] align xyz run execute align xyz positioned ~ ~0.5 ~0.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=4] add doord_init_close

tag @e[tag=doord_init_close] add doord_init

playsound statues:game.door.small.close master @a ~ ~ ~ 1 1