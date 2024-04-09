execute unless function statues:feature_flags/check_doors_flags run return fail

tag @s remove door3x3_opening
execute at @s[y_rotation=0] positioned ~ ~ ~-1.5 if entity @a[dx=3,dy=3,dz=3,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door3x3_opening
execute at @s[y_rotation=90] positioned ~-1.5 ~ ~ if entity @a[dx=3,dy=3,dz=3,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door3x3_opening
execute if entity @s[tag=3x3door,tag=door3x3_opening,tag=!door3x3_opened] at @s run function statues:ingame/mechanics/doors_3x3/open
execute if entity @s[tag=3x3door,tag=!door3x3_opening,tag=door3x3_opened] at @s run function statues:ingame/mechanics/doors_3x3/close

execute at @s[y_rotation=0] unless entity @e[tag=3x3display,distance=..2] align xyz run summon item_display ~.5 ~.5 ~.5 {item:{Count:1b,tag:{CustomModelData:5},id:"minecraft:stick"},Tags:["3x3display"]}

execute at @s[y_rotation=90] unless entity @e[tag=3x3display,distance=..2] align xyz run summon item_display ~.5 ~.5 ~.5 {item:{Count:1b,tag:{CustomModelData:5},id:"minecraft:stick"},Tags:["3x3display"],Rotation:[90f]}