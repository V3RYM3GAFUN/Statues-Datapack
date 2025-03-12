execute unless function statues:feature_flags/check_doors_5x3_flags run return fail

#execute as @e[tag=5x3door,type=minecraft:marker] at @s if entity @a[limit=1,gamemode=!spectator,distance=..5] run scoreboard players set $rundoors Statues.TempData 1
#execute if score $rundoors Statues.TempData matches 1 as @e[tag=5x3door] at @s run function statues:mechanics/doors_5x3/door_tick
#scoreboard players set $rundoors Statues.TempData 0

execute at @a[gamemode=!spectator] as @n[type=marker,tag=5x3door,distance=..5] run function statues:mechanics/doors_5x3/door_tick