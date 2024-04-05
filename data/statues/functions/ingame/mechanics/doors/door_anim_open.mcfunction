execute unless function statues:feature_flags/check_doors_flags run return fail
execute if entity @s[y_rotation=0] align xyz run execute align xyz positioned ~0.5 ~1 ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=2] add doord_init_open_up
execute if entity @s[y_rotation=180] align xyz run execute align xyz positioned ~0.5 ~1 ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=2] add doord_init_open_up
execute if entity @s[y_rotation=90] align xyz run execute align xyz positioned ~ ~1 ~0.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=2] add doord_init_open_up
execute if entity @s[y_rotation=270] align xyz run execute align xyz positioned ~ ~1 ~0.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=2] add doord_init_open_up

execute if entity @s[y_rotation=0] align xyz run execute align xyz positioned ~0.5 ~ ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=2] add doord_init_open_down
execute if entity @s[y_rotation=180] align xyz run execute align xyz positioned ~0.5 ~ ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=2] add doord_init_open_down
execute if entity @s[y_rotation=90] align xyz run execute align xyz positioned ~ ~ ~0.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=2] add doord_init_open_down
execute if entity @s[y_rotation=270] align xyz run execute align xyz positioned ~ ~ ~0.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=2] add doord_init_open_down

playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~ ~ .5 2