execute as @e[tag=3x3door] at @s if entity @a[distance=..3,gamemode=!spectator,limit=1] run tag @s add door_opened

execute as @e[tag=3x3display] if entity @e[tag=door_opened,distance=..1,limit=1] run data merge entity @e[type=minecraft:item_display,sort=nearest,limit=1] {item:{tag:{CustomModelData:5}}}


execute as @e[tag=3x3door] at @s if entity @a[distance=3..,gamemode=!spectator,limit=1] run tag @s add door_opened

execute as @e[tag=3x3display] if entity @e[tag=!door_opened,distance=..1,limit=1] run data merge entity @e[type=minecraft:item_display,sort=nearest,limit=1] {item:{tag:{CustomModelData:6}}}