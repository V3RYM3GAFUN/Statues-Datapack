execute unless function statues:feature_flags/check_doors_1x2_flags run return fail

playsound statues:game.door.small.open master @a ~ ~ ~ 1 1

execute align xyz positioned ~-1 ~-.5 ~-1 as @e[tag=1x2display,dx=2,dy=1,dz=2,sort=nearest,limit=2] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0.98f,0f,0f]}}

execute as @s run fill ~ ~ ~ ~ ~1 ~ air replace barrier

tag @s add door1x2_opened