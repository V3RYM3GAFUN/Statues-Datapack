execute unless function statues:feature_flags/check_sas_flags run return fail

execute if score @s Statues.Sas matches -159.. run scoreboard players remove @s Statues.Sas 1

execute if entity @s[tag=!triggered] positioned ~ ~ ~.5 if entity @a[dx=1,dy=2,dz=0,gamemode=!spectator] run function statues:mechanics/sas/dx/2x2/trigger

execute if score @s Statues.Sas matches 0 run particle minecraft:cloud ~1 ~1 ~.5 0.5 0.5 0.5 .05 200 normal @a
execute if score @s Statues.Sas matches 0 run playsound minecraft:block.trial_spawner.place ambient @a ~.5 ~ ~.5 1 0

execute if score @s Statues.Sas matches -50 positioned ~ ~-1 ~-2 as @e[dx=0,dy=1,dz=4,type=marker,tag=machine_sas_doordx] at @s run function statues:mechanics/sas/dx/2x2/open

execute if score @s Statues.Sas matches -160 run tag @s remove triggered