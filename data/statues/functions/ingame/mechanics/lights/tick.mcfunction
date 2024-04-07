execute unless function statues:feature_flags/check_lights_flags run return fail
execute as @e[type=minecraft:armor_stand,tag=game_lamp_collision_main] at @s unless entity @a[distance=..10] run function statues:ingame/mechanics/lights/kill_collision

execute as @a at @s as @e[type=minecraft:block_display,tag=game_lamp,distance=..5] at @s positioned ~0.5 ~ ~0.5 run function statues:ingame/mechanics/lights/summon_collision