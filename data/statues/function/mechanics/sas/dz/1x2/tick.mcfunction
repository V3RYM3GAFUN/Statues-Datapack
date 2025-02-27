execute unless function statues:feature_flags/check_sas_flags run return fail

execute if score @s Statues.Sas matches -159.. run scoreboard players remove @s Statues.Sas 1

execute if entity @s[tag=!triggered] positioned ~-.5 ~ ~-1 if entity @a[dx=1,dy=2,dz=2,gamemode=!spectator] run function statues:mechanics/sas/dz/1x2/trigger

execute if score @s Statues.Sas matches 0 run particle minecraft:cloud ~.5 ~1 ~.5 0.5 0 0 .05 200 normal @a
execute if score @s Statues.Sas matches 0 run playsound minecraft:block.trial_spawner.place ambient @a ~.5 ~ ~.5 1 0

execute if score @s Statues.Sas matches -50 positioned ~-3 ~-1 ~ as @e[dx=6,dy=1,dz=0,type=marker,tag=machine_sas_doordz] at @s run function statues:mechanics/sas/dz/1x2/open

execute if score @s Statues.Sas matches -160 run tag @s remove triggered