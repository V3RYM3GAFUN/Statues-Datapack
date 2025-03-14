execute unless function statues:feature_flags/check_lights_flags run return fail
execute as @e[tag=tlamp] at @s run setblock ~ ~ ~ light[level=15]
execute as @e[tag=tlamp_wall] at @s run setblock ~ ~ ~ light[level=15]
execute as @e[tag=tlampc] at @s run setblock ~-0.5 ~ ~-0.5 light[level=14]
execute as @e[tag=tlampc] at @s run setblock ~-0.5 ~ ~0.5 light[level=14]
execute as @e[tag=tlampc] at @s run setblock ~0.5 ~ ~-0.5 light[level=14]
execute as @e[tag=tlampc] at @s run setblock ~0.5 ~ ~0.5 light[level=14]
execute as @e[tag=tlampcx] at @s run setblock ~-0.5 ~ ~ light[level=15]
execute as @e[tag=tlampcx] at @s run setblock ~0.5 ~ ~ light[level=15]
execute as @e[tag=tlampcz] at @s run setblock ~ ~ ~-0.5 light[level=15]
execute as @e[tag=tlampcz] at @s run setblock ~ ~ ~0.5 light[level=15]

execute as @e[tag=tlamp,tag=tlamp_lb] at @s run setblock ~ ~ ~ light[level=7]
execute as @e[tag=tlamp_wall,tag=tlamp_lb] at @s run setblock ~ ~ ~ light[level=7]
execute as @e[tag=tlampc,tag=tlamp_lb] at @s run setblock ~-0.5 ~ ~-0.5 light[level=6]
execute as @e[tag=tlampc,tag=tlamp_lb] at @s run setblock ~-0.5 ~ ~0.5 light[level=6]
execute as @e[tag=tlampc,tag=tlamp_lb] at @s run setblock ~0.5 ~ ~-0.5 light[level=6]
execute as @e[tag=tlampc,tag=tlamp_lb] at @s run setblock ~0.5 ~ ~0.5 light[level=6]
execute as @e[tag=tlampcx,tag=tlamp_lb] at @s run setblock ~-0.5 ~ ~ light[level=7]
execute as @e[tag=tlampcx,tag=tlamp_lb] at @s run setblock ~0.5 ~ ~ light[level=7]
execute as @e[tag=tlampcz,tag=tlamp_lb] at @s run setblock ~ ~ ~-0.5 light[level=7]
execute as @e[tag=tlampcz,tag=tlamp_lb] at @s run setblock ~ ~ ~0.5 light[level=7]

execute as @e[tag=game_lamp_custom] at @s run setblock ~ ~-1 ~ light[level=15]

execute as @e[tag=game_lamp] run data merge entity @s {block_state:{Properties:{lit:"true"}}}
execute as @e[tag=game_lamp_custom] run data merge entity @s {item:{components:{item_model:"statues:misc/parking_light_on"}}}