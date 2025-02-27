scoreboard players set @s Statues.Sas 80
tag @s add triggered

execute at @s positioned ~-6 ~-1 ~ as @e[dx=12,dy=1,dz=0,type=marker,tag=machine_sas_doordz] at @s run function statues:mechanics/sas/dz/5x3/close
