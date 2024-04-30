execute if score doors_3x3 Statues.FeatureFlags matches 1 as @e[tag=3x3door,type=minecraft:marker] at @s if entity @a[limit=1,gamemode=!spectator,distance=..5] run scoreboard players set $rundoors Statues.TempData 1
execute if score $rundoors Statues.TempData matches 1 as @e[tag=3x3door] at @s run function statues:ingame/mechanics/doors_3x3/tick
scoreboard players set $rundoors Statues.TempData 0