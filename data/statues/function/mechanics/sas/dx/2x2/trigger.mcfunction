scoreboard players set @s Statues.Sas 50
tag @s add triggered

execute at @s positioned ~ ~-1 ~-2 as @e[dx=0,dy=1,dz=4,type=marker,tag=machine_sas_doordx] at @s run function statues:mechanics/sas/dx/2x2/close
