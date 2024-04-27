execute unless function statues:feature_flags/check_blood_trail_flags run return fail

execute if score @s Statues.Survivors matches 16..19 run scoreboard players remove @s Statues.SurvivorTrail 1

execute if score @s Statues.Survivors matches 7..15 run scoreboard players remove @s Statues.SurvivorTrail 2

execute if score @s Statues.Survivors matches ..6 run scoreboard players remove @s Statues.SurvivorTrail 4

execute if score @s Statues.SurvivorTrail matches 0 align y run summon marker ~ ~ ~ {Tags:["survivor_blood_trail"]}
execute if score @s Statues.SurvivorTrail matches ..0 run scoreboard players set @s Statues.SurvivorTrail 60