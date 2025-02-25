execute unless function statues:feature_flags/check_sas_flags run return fail

execute as @e[tag=machine_sas,type=minecraft:marker] at @s run function statues:mechanics/sas/machine_sas
execute as @e[tag=elevator_sas,type=minecraft:marker] at @s run function statues:mechanics/sas/elevator_sas
execute as @e[tag=sas_5x3,tag=machine_sas,type=minecraft:marker] at @s run function statues:mechanics/sas/dz/5x3/tick