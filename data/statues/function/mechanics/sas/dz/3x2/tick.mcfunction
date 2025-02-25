execute unless function statues:feature_flags/check_sas_flags run return fail

execute if score @s Statues.Sas matches -179.. run scoreboard players remove @s Statues.Sas 1

execute if entity @s[tag=!triggered] positioned ~-5 ~ ~-2 if entity @a[dx=10,dy=2,dz=4,gamemode=!spectator] run function statues:mechanics/sas/dz/3x2/trigger

execute if score @s Statues.Sas matches 0 run particle minecraft:cloud ~ ~1 ~ 2 1 1 .1 200 normal @a
execute if score @s Statues.Sas matches 0 run playsound minecraft:block.trial_spawner.place ambient @a ~ ~ ~ 1 0

execute if score @s Statues.Sas matches -50 positioned ~-6 ~-1 ~ as @e[dx=12,dy=1,dz=0,type=marker,tag=machine_sas_doordz] at @s run function statues:mechanics/sas/dz/3x2/open

execute if score @s Statues.Sas matches -180 run tag @s remove triggered