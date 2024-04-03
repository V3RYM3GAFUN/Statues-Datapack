execute unless function statues:feature_flags/check_doors_flags run return fail
execute if entity @s[y_rotation=0] align xyz run execute align xyz positioned ~0.5 ~0.5 ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=4] add doord_init_close
execute if entity @s[y_rotation=180] align xyz run execute align xyz positioned ~0.5 ~0.5 ~ run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=4] add doord_init_close
execute if entity @s[y_rotation=90] align xyz run execute align xyz positioned ~ ~0.5 ~0.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=4] add doord_init_close
execute if entity @s[y_rotation=270] align xyz run execute align xyz positioned ~ ~0.5 ~0.5 run tag @e[type=minecraft:block_display,tag=doord,sort=nearest,limit=4] add doord_init_close

playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 0.5 2