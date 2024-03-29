execute align xyz positioned ~0.90625 ~ ~1 if entity @p[distance=..0.85] run tag @s add door_req_open
execute align xyz positioned ~0.90625 ~ ~1 unless entity @p[distance=..0.85] run tag @s add door_req_close

execute as @s[tag=door_animating] run return 0

execute as @s[tag=door_req_close] run fill ~ ~ ~ ~ ~1 ~1 iron_trapdoor[open=true,facing=west]
execute as @s[tag=door_req_open] run fill ~ ~ ~ ~ ~1 ~1 air