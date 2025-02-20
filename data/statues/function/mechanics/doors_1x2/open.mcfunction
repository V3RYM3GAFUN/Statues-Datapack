execute unless function statues:feature_flags/check_doors_1x2_flags run return fail

playsound statues:game.door.small.open master @a ~ ~ ~ 1 1
data merge entity @e[tag=1x2top,distance=..2,sort=nearest,limit=1,y_rotation=90] {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0.98f,0f,0f]}}
data merge entity @e[tag=1x2bottom,distance=..2,sort=nearest,limit=1,y_rotation=90] {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0.98f,0f,0f]}}
execute as @s[y_rotation=0] run fill ~ ~ ~ ~ ~1 ~ air replace barrier
execute as @s[y_rotation=90] run fill ~ ~ ~ ~ ~1 ~ air replace barrier

data merge entity @e[tag=1x2top,distance=..2,sort=nearest,limit=1,y_rotation=0] {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0.98f,0f,0f]}}
data merge entity @e[tag=1x2bottom,distance=..2,sort=nearest,limit=1,y_rotation=0] {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0.98f,0f,0f]}}

tag @s add door1x2_opened