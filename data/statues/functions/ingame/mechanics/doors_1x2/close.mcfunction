execute unless function statues:feature_flags/check_doors_1x2_flags run return fail

playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1
execute as @e[tag=1x2display,distance=..2,sort=nearest,limit=2] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,0f,0f]}}
execute as @s run fill ~ ~1 ~ ~ ~ ~ barrier replace air

tag @s remove door1x2_opened
