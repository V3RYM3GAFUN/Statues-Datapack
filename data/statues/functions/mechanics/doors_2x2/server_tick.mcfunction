execute unless function statues:feature_flags/check_doors_2x2_flags run return fail

execute as @e[tag=door] at @s if entity @a[limit=1,gamemode=!spectator,distance=..5] run scoreboard players set $rundoors Statues.TempData 1
execute if score $rundoors Statues.TempData matches 1 run function statues:mechanics/doors_2x2/door_tick
scoreboard players set $rundoors Statues.TempData 0