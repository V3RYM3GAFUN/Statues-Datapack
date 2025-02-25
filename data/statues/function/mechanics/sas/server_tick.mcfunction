execute unless function statues:feature_flags/check_sas_flags run return fail

## We need something more optimised here! 

execute as @e[tag=elevator_sas,type=minecraft:marker] at @s run function statues:mechanics/sas/elevator_sas

execute as @e[tag=machine_sas,tag=sas_dx,type=minecraft:marker] at @s run function statues:mechanics/sas/dx/tick_all
execute as @e[tag=machine_sas,tag=sas_dz,type=minecraft:marker] at @s run function statues:mechanics/sas/dz/tick_all