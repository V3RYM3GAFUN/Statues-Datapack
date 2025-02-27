scoreboard players set @s Statues.Sas 50
tag @s add triggered

execute at @s positioned ~-3 ~-1 ~ as @e[dx=6,dy=1,dz=0,type=marker,tag=machine_sas_doordz] at @s run function statues:mechanics/sas/dz/1x2/close
