execute if score doors_2x2 Statues.FeatureFlags matches 1 as @e[tag=door] at @s if entity @a[limit=1,gamemode=!spectator,distance=..5] run scoreboard players set $rundoors Statues.TempData 1
execute if score $rundoors Statues.TempData matches 1 run function statues:ingame/mechanics/doors_2x2/tick
scoreboard players set $rundoors Statues.TempData 0