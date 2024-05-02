execute unless function statues:feature_flags/check_sas_flags run return fail

execute as @e[tag=machine_sas,type=minecraft:marker] at @s run function statues:ingame/mechanics/sas/machine_sas
execute as @e[tag=elevator_sas,type=minecraft:marker] at @s run function statues:ingame/mechanics/sas/elevator_sas