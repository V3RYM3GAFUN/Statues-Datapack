execute unless function statues:feature_flags/check_doors_1x2_flags run return fail

# execute as @e[tag=1x2door,type=minecraft:marker] at @s if entity @p[gamemode=!spectator,distance=..5] run scoreboard players set $rundoors Statues.TempData 1
# execute if score $rundoors Statues.TempData matches 1 as @e[tag=1x2door] at @s run function statues:mechanics/doors_1x2/door_tick
# scoreboard players set $rundoors Statues.TempData 0

execute at @a[gamemode=!spectator] as @e[type=marker,tag=1x2door,distance=..5,limit=2,sort=nearest] run function statues:mechanics/doors_1x2/door_tick