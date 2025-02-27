scoreboard players set @s Statues.Sas 60
tag @s add triggered

execute at @s positioned ~ ~-1 ~-3 as @e[dx=0,dy=1,dz=6,type=marker,tag=machine_sas_doordx] at @s run function statues:mechanics/sas/dx/3x2/close
