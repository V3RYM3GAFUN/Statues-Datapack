execute unless function statues:feature_flags/check_doors_1x2_flags run return fail

tag @s remove door1x2_opening
execute at @s[y_rotation=0] align xyz positioned ~ ~ ~-1 if entity @a[dx=0,dy=1,dz=2,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door1x2_opening
execute at @s[y_rotation=90] align xyz positioned ~-1 ~ ~ if entity @a[dx=2,dy=1,dz=0,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door1x2_opening
execute at @s if entity @s[tag=1x2door,tag=door1x2_opening,tag=!door1x2_opened] run function statues:mechanics/doors_1x2/open
execute at @s if entity @s[tag=1x2door,tag=!door1x2_opening,tag=door1x2_opened] run function statues:mechanics/doors_1x2/close

execute at @s[y_rotation=0] align xyz positioned ~-1 ~-.5 ~-1 unless entity @e[tag=1x2top,dx=2,dy=1,dz=2] align xyz run summon block_display ~1 ~2 ~.6 {block_state:{Name:"minecraft:iron_door",Properties:{half:"upper",hinge:"right"}},Tags:["1x2display","1x2top"],Rotation:[0f,0f]}
execute at @s[y_rotation=0] align xyz positioned ~-1 ~-.5 ~-1 unless entity @e[tag=1x2bottom,dx=2,dy=1,dz=2] align xyz run summon block_display ~1 ~1 ~.6 {block_state:{Name:"minecraft:iron_door",Properties:{half:"lower",hinge:"right"}},Tags:["1x2display","1x2bottom"],Rotation:[0f,0f]}

execute at @s[y_rotation=90] align xyz positioned ~-1 ~-.5 ~-1 unless entity @e[tag=1x2top,dx=2,dy=1,dz=2] align xyz run summon block_display ~2.4 ~2 ~1 {block_state:{Name:"minecraft:iron_door",Properties:{half:"upper",hinge:"right"}},Tags:["1x2display","1x2top"],Rotation:[90f,0f]}
execute at @s[y_rotation=90] align xyz positioned ~-1 ~-.5 ~-1 unless entity @e[tag=1x2bottom,dx=2,dy=1,dz=2] align xyz run summon block_display ~2.4 ~1 ~1 {block_state:{Name:"minecraft:iron_door",Properties:{half:"lower",hinge:"right"}},Tags:["1x2display","1x2bottom"],Rotation:[90f,0f]}