kill @e[tag=power_doord]

execute as @e[tag=power_door_dx,tag=!power_door_opened] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ air replace red_wool
execute as @e[tag=power_door_dz,tag=!power_door_opened] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 air replace red_wool
execute as @e[tag=power_door_dx,tag=!power_door_opened] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ air replace barrier
execute as @e[tag=power_door_dz,tag=!power_door_opened] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 air replace barrier
execute as @e[tag=power_door_dz,tag=!power_door_opened] at @s run particle cloud ^.0 ^.0 ^.0 0 0.85 1 0.1 50 force
execute as @e[tag=power_door_dz,tag=!power_door_opened] at @s run playsound block.piston.contract block @a ~ ~ ~ 1 0.75
tag @e[tag=power_door,tag=!power_door_opened] add power_door_opened