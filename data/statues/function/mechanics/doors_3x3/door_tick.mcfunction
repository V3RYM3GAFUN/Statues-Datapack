execute unless function statues:feature_flags/check_doors_3x3_flags run return fail

tag @s remove door3x3_opening
execute at @s[y_rotation=0] positioned ~-1 ~-1 ~-1.5 if entity @a[dx=2,dy=3,dz=3,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door3x3_opening
execute at @s[y_rotation=90] positioned ~-1.5 ~-1 ~-1 if entity @a[dx=3,dy=3,dz=2,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door3x3_opening
execute if entity @s[tag=3x3door,tag=door3x3_opening,tag=!door3x3_opened] run function statues:mechanics/doors_3x3/open
execute if entity @s[tag=3x3door,tag=!door3x3_opening,tag=door3x3_opened] run function statues:mechanics/doors_3x3/close

execute at @s[y_rotation=0] unless entity @e[tag=3x3left,distance=..2] align xyz run summon item_display ~.5 ~.5 ~.5 {item:{count:1b,components:{item_model:"statues:machines/door_3x3_left"},id:"minecraft:stick"},Tags:["3x3display","3x3left"],Rotation:[180f,0f]}
execute at @s[y_rotation=0] unless entity @e[tag=3x3right,distance=..2] align xyz run summon item_display ~.5 ~.5 ~.5 {item:{count:1b,components:{item_model:"statues:machines/door_3x3_right"},id:"minecraft:stick"},Tags:["3x3display","3x3right"]}

execute at @s[y_rotation=90] unless entity @e[tag=3x3left,distance=..2] align xyz run summon item_display ~.5 ~.5 ~.5 {item:{count:1b,components:{item_model:"statues:machines/door_3x3_left"},id:"minecraft:stick"},Tags:["3x3display","3x3left"],Rotation:[-90f,0f]}
execute at @s[y_rotation=90] unless entity @e[tag=3x3right,distance=..2] align xyz run summon item_display ~.5 ~.5 ~.5 {item:{count:1b,components:{item_model:"statues:machines/door_3x3_right"},id:"minecraft:stick"},Tags:["3x3display","3x3right"],Rotation:[90f,0f]}