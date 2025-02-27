execute unless function statues:feature_flags/check_sas_flags run return fail

execute if score @s Statues.Sas matches -159.. run scoreboard players remove @s Statues.Sas 1

execute if entity @s[tag=!triggered] positioned ~-1 ~ ~-0.5 if entity @a[dx=2,dy=2,dz=1,gamemode=!spectator] run function statues:mechanics/sas/dx/1x2/trigger

execute if score @s Statues.Sas matches 0 run particle minecraft:cloud ~.5 ~1 ~.5 0 0 0.5 .05 200 normal @a
execute if score @s Statues.Sas matches 0 run playsound minecraft:block.trial_spawner.place ambient @a ~.5 ~ ~.5 1 0

execute if score @s Statues.Sas matches -50 positioned ~ ~-1 ~-3 as @e[dx=0,dy=1,dz=6,type=marker,tag=machine_sas_doordx] at @s run function statues:mechanics/sas/dx/1x2/open

execute if score @s Statues.Sas matches -160 run tag @s remove triggered