execute at @s if entity @a[distance=..2,gamemode=!spectator,limit=1] run tag @s add door_opening
execute as @e[tag=3x3display,tag=!door_opened] at @s if entity @e[tag=door_opening,sort=nearest,limit=1] run function statues:ingame/mechanics/doors_3x3/open

execute at @s unless entity @a[distance=..2,gamemode=!spectator,limit=1] run tag @s remove door_opening
execute as @e[tag=3x3display,tag=door_opened] at @s unless entity @e[tag=!door_opening,sort=nearest,limit=1] run function statues:ingame/mechanics/doors_3x3/close
