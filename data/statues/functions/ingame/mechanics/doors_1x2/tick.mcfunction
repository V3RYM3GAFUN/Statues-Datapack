execute unless function statues:feature_flags/check_doors_1x2_flags run return fail

tag @s remove door1x2_opening
execute at @s[y_rotation=0] positioned ~ ~.5 ~.25 if entity @a[distance=..2,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door1x2_opening
execute at @s[y_rotation=90] positioned ~ ~.5 ~.25 if entity @a[distance=..2,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door1x2_opening
execute if entity @s[tag=1x2door,tag=door1x2_opening,tag=!door1x2_opened] run function statues:ingame/mechanics/doors_1x2/open
execute if entity @s[tag=1x2door,tag=!door1x2_opening,tag=door1x2_opened] run function statues:ingame/mechanics/doors_1x2/close

execute at @s[y_rotation=0] positioned ~ ~1 ~ unless entity @e[tag=1x2top,distance=..2] align xyz run summon block_display ~ ~ ~-.4 {block_state:{Name:"minecraft:iron_door",Properties:{half:"upper",hinge:"right"}},Tags:["1x2display","1x2top"],Rotation:[0f]}
execute at @s[y_rotation=0] unless entity @e[tag=1x2bottom,distance=..2] align xyz run summon block_display ~ ~ ~-.4 {block_state:{Name:"minecraft:iron_door",Properties:{half:"lower",hinge:"right"}},Tags:["1x2display","1x2bottom"],Rotation:[0f]}

execute at @s[y_rotation=90] positioned ~ ~1 ~ unless entity @e[tag=1x2top,distance=..2] align xyz run summon block_display ~1.4 ~ ~ {block_state:{Name:"minecraft:iron_door",Properties:{half:"upper",hinge:"right"}},Tags:["1x2display","1x2top"],Rotation:[90f]}
execute at @s[y_rotation=90] unless entity @e[tag=1x2bottom,distance=..2] align xyz run summon block_display ~1.4 ~ ~ {block_state:{Name:"minecraft:iron_door",Properties:{half:"lower",hinge:"right"}},Tags:["1x2display","1x2bottom"],Rotation:[90f]}