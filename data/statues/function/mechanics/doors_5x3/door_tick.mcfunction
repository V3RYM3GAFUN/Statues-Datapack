execute unless function statues:feature_flags/check_doors_5x3_flags run return fail

tag @s remove door5x3_opening
execute at @s[y_rotation=0] align xyz positioned ~-2 ~ ~-1.5 if entity @a[dx=4,dy=2,dz=3,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door5x3_opening
execute at @s[y_rotation=90] align xyz positioned ~-1.5 ~ ~-2 if entity @a[dx=3,dy=2,dz=4,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door5x3_opening
execute if entity @s[tag=5x3door,tag=door5x3_opening,tag=!door5x3_opened] run function statues:mechanics/doors_5x3/open
execute if entity @s[tag=5x3door,tag=!door5x3_opening,tag=door5x3_opened] run function statues:mechanics/doors_5x3/close

execute at @s[y_rotation=0] unless entity @e[tag=5x3left,distance=..2] align xyz run summon item_display ~.5 ~1.5 ~.5 {item:{count:1b,components:{item_model:"statues:machines/door_5x3_left"},id:"minecraft:stick"},Tags:["5x3display","5x3left"],Rotation:[0f,0f],transformation:{scale:[4,4,4],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0f,0.5f,0f]}}
execute at @s[y_rotation=0] unless entity @e[tag=5x3right,distance=..2] align xyz run summon item_display ~.5 ~1.5 ~.5 {item:{count:1b,components:{item_model:"statues:machines/door_5x3_right"},id:"minecraft:stick"},Tags:["5x3display","5x3right"],Rotation:[0f,0f],transformation:{scale:[4,4,4],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0f,0.5f,0f]}}

execute at @s[y_rotation=90] unless entity @e[tag=5x3left,distance=..2] align xyz run summon item_display ~.5 ~1.5 ~.5 {item:{count:1b,components:{item_model:"statues:machines/door_5x3_left"},id:"minecraft:stick"},Tags:["5x3display","5x3left"],Rotation:[90f,0f],transformation:{scale:[4,4,4],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0f,0.5f,0f]}}
execute at @s[y_rotation=90] unless entity @e[tag=5x3right,distance=..2] align xyz run summon item_display ~.5 ~1.5 ~.5 {item:{count:1b,components:{item_model:"statues:machines/door_5x3_right"},id:"minecraft:stick"},Tags:["5x3display","5x3right"],Rotation:[90f,0f],transformation:{scale:[4,4,4],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0f,0.5f,0f]}}