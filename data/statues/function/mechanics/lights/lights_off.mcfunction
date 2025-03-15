execute unless function statues:feature_flags/check_lights_flags run return fail
execute as @e[tag=tlamp] at @s run setblock ~ ~ ~ light[level=0]
execute as @e[tag=tlamp_wall] at @s run setblock ~ ~ ~ light[level=0]

execute as @e[tag=tlampc] at @s run setblock ~-0.5 ~ ~-0.5 light[level=0]
execute as @e[tag=tlampc] at @s run setblock ~-0.5 ~ ~0.5 light[level=0]
execute as @e[tag=tlampc] at @s run setblock ~0.5 ~ ~-0.5 light[level=0]
execute as @e[tag=tlampc] at @s run setblock ~0.5 ~ ~0.5 light[level=0]

execute as @e[tag=tlampcx] at @s run setblock ~-0.5 ~ ~ light[level=0]
execute as @e[tag=tlampcx] at @s run setblock ~0.5 ~ ~ light[level=0]

execute as @e[tag=tlampcz] at @s run setblock ~ ~ ~-0.5 light[level=0]
execute as @e[tag=tlampcz] at @s run setblock ~ ~ ~0.5 light[level=0]

execute as @e[tag=game_lamp_custom] at @s run setblock ~ ~-1 ~ light[level=0]

execute as @e[tag=game_lamp] run data modify entity @s block_state.Properties.lit set value "false"
execute as @e[tag=game_lamp_custom] run data modify entity @s item.components."minecraft:item_model" set value "statues:misc/parking_light_off"

scoreboard players set $Lights Statues.DynamicData 0