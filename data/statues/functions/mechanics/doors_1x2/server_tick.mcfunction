execute unless function statues:feature_flags/check_doors_1x2_flags run return fail

execute as @e[tag=1x2door,type=minecraft:marker] at @s if entity @a[limit=1,gamemode=!spectator,distance=..5] run scoreboard players set $rundoors Statues.TempData 1
execute if score $rundoors Statues.TempData matches 1 as @e[tag=1x2door] at @s run function statues:mechanics/doors_1x2/door_tick
scoreboard players set $rundoors Statues.TempData 0