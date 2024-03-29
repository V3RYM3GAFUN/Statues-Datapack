tag @e[distance=..1.5,type=minecraft:block_display,tag=doord] add doord_init_close

execute as @e[tag=doord_init_close] run data merge entity @s {transformation:{translation:[0f,-2f,0f]}}

playsound minecraft:block.respawn_anchor.deplete ambient @a ~ ~ ~ 0.5 2