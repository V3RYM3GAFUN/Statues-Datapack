#> Run kill_collision without distance check in case someone moved too suddenly
execute as @e[type=minecraft:armor_stand,tag=game_lamp_collision_main] at @s unless entity @a[distance=..10,gamemode=!spectator] run function statues:mechanics/lights/kill_collision