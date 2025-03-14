execute unless function statues:feature_flags/check_lights_flags run return fail
execute at @a[gamemode=!spectator] as @e[type=minecraft:armor_stand,tag=game_lamp_collision_main,distance=..20] at @s unless entity @a[distance=..10,gamemode=!spectator] run function statues:mechanics/lights/kill_collision

execute at @a[gamemode=!spectator] as @e[type=minecraft:block_display,tag=game_lamp,distance=..5] at @s positioned ~0.5 ~ ~0.5 run function statues:mechanics/lights/summon_collision