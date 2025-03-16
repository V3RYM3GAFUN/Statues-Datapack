execute unless function statues:feature_flags/check_lights_flags run return fail

#> 7x7x7 detection box
# then 4x2x4
execute at @a[gamemode=!spectator,x=0] positioned ~-6 ~-3 ~-6 as @e[type=minecraft:armor_stand,tag=game_lamp_collision_main,dx=9,dy=9,dz=9] at @s positioned ~-2 ~-2 ~-2 unless entity @a[gamemode=!spectator,dx=3,dy=1,dz=3] at @s run function statues:mechanics/lights/kill_collision

#> 4x5x4 detection box
execute at @a[gamemode=!spectator,x=0] positioned ~-2.5 ~ ~-2.5 as @e[type=minecraft:block_display,tag=game_lamp,dx=3,dy=4,dz=3] at @s positioned ~0.5 ~ ~0.5 run function statues:mechanics/lights/summon_collision