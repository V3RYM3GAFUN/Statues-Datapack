execute unless function statues:feature_flags/check_blood_trails_flags run return fail

execute unless score @s Statues.SurvivorTrail matches 0.. run scoreboard players set @s Statues.SurvivorTrail 200

execute if score @s Statues.TempData matches 20 run particle falling_lava ~ ~ ~ 1 0 1 0 1 normal @a[team=Monster,distance=..10]
execute if score @s Statues.TempData matches 20 run particle falling_lava ~ ~ ~ 1 0 1 0 1 normal @a[team=Dev,distance=..30]

execute if score @s Statues.TempData matches 0.. run scoreboard players remove @s Statues.TempData 1
execute if score @s Statues.TempData matches -1 run scoreboard players set @s Statues.TempData 20
execute if score @s Statues.SurvivorTrail matches 0.. run scoreboard players remove @s Statues.SurvivorTrail 1
execute if score @s Statues.SurvivorTrail matches 0 run kill @s

execute if block ~ ~-.1 ~ air run tp @s ~ ~-.05 ~