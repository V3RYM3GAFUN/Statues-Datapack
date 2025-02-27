execute unless function statues:feature_flags/check_sas_flags run return fail

execute if score @s Statues.Sas matches -199.. run scoreboard players remove @s Statues.Sas 1

execute if entity @s[tag=!triggered] positioned ~-2 ~ ~-4.5 if entity @a[dx=4,dy=2,dz=9,gamemode=!spectator] run function statues:mechanics/sas/dx/5x3/trigger


execute if score @s Statues.Sas matches 0 run particle minecraft:cloud ~.5 ~1 ~.5 1 1 3 .05 200 normal @a
execute if score @s Statues.Sas matches 0 run playsound minecraft:block.trial_spawner.place ambient @a ~.5 ~ ~.5 1 0

execute if score @s Statues.Sas matches -80 positioned ~ ~-1 ~-6 as @e[dx=0,dy=1,dz=12,type=marker,tag=machine_sas_doordx] at @s run function statues:mechanics/sas/dx/5x3/open

execute if score @s Statues.Sas matches -200 run tag @s remove triggered