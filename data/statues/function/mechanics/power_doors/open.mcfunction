execute unless function statues:feature_flags/check_power_doors_flags run return fail
kill @e[tag=power_doord]

execute as @e[tag=power_door_dx,tag=!power_door_opened] at @s run fill ~-1 ~-1 ~ ~1 ~2 ~ air replace red_wool
execute as @e[tag=power_door_dz,tag=!power_door_opened] at @s run fill ~ ~-1 ~-1 ~ ~2 ~1 air replace red_wool
execute as @e[tag=power_door_dx,tag=!power_door_opened] at @s run fill ~-1 ~-1 ~ ~1 ~2 ~ air replace barrier
execute as @e[tag=power_door_dz,tag=!power_door_opened] at @s run fill ~ ~-1 ~-1 ~ ~2 ~1 air replace barrier
execute as @e[tag=power_door_dx,tag=!power_door_opened] at @s run particle cloud ^ ^ ^ 1 0.85 0 0.1 50 normal
execute as @e[tag=power_door_dz,tag=!power_door_opened] at @s run particle cloud ^ ^ ^ 0 0.85 1 0.1 50 normal
execute as @e[tag=power_door_dx,tag=!power_door_opened] at @s run playsound block.piston.contract block @a ~ ~.5 ~ 1 0.75
execute as @e[tag=power_door_dz,tag=!power_door_opened] at @s run playsound block.piston.contract block @a ~ ~.5 ~ 1 0.75
tag @e[tag=power_door,tag=!power_door_opened] add power_door_opened