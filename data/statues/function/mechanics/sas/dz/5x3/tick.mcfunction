execute unless function statues:feature_flags/check_sas_flags run return fail

execute if score @s Statues.Sas matches -199.. run scoreboard players remove @s Statues.Sas 1

execute if entity @s[tag=!triggered] positioned ~-4.5 ~ ~-2 if entity @a[dx=9,dy=2,dz=4,gamemode=!spectator] run function statues:mechanics/sas/dz/5x3/trigger


execute if score @s Statues.Sas matches 0 run particle minecraft:cloud ~.5 ~1 ~.5 1 1 3 .05 200 normal @a
execute if score @s Statues.Sas matches 0 run playsound minecraft:block.trial_spawner.place ambient @a ~.5 ~ ~.5 1 0

execute if score @s Statues.Sas matches -80 positioned ~-6 ~-1 ~ as @e[dx=12,dy=1,dz=0,type=marker,tag=machine_sas_doordz] at @s run function statues:mechanics/sas/dz/5x3/open

execute if score @s Statues.Sas matches -200 run tag @s remove triggered