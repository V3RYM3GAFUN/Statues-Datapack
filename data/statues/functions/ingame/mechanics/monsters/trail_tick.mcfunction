execute if entity @s[tag=!init_timer] run scoreboard players set @s Statues.SurvivorTrail 200
execute if entity @s[tag=!init_timer] run tag @s add init_timer

particle dust 1 0 0 1 ~ ~ ~ 0.1 0 0.1 0 5 normal @a[team=Monster,distance=..10]
particle dust 1 0 0 1 ~ ~ ~ 0.1 0 0.1 0 5 normal @a[team=Dev,distance=..10]

execute if score @s Statues.SurvivorTrail matches 0.. run scoreboard players remove @s Statues.SurvivorTrail 1
execute if score @s Statues.SurvivorTrail matches 0 run kill @s

execute align y if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 