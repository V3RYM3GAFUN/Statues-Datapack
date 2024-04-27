scoreboard players remove @s Statues.SurvivorTrail 1

execute if score @s Statues.SurvivorTrail matches 0 run summon marker ~ ~ ~ {Tags:["survivor_blood_trail"]}
execute if score @s Statues.SurvivorTrail matches ..0 run scoreboard players set @s Statues.SurvivorTrail 40