execute unless function statues:feature_flags/check_doors_flags run return fail

tag @s remove door3x3_opening
execute if entity @a[distance=..2.5,gamemode=!spectator,limit=1,sort=nearest] run tag @s add door3x3_opening
execute if entity @s[tag=3x3door,tag=door3x3_opening,tag=!door3x3_opened] at @s run function statues:ingame/mechanics/doors_3x3/open
execute if entity @s[tag=3x3door,tag=!door3x3_opening,tag=door3x3_opened] at @s run function statues:ingame/mechanics/doors_3x3/close

