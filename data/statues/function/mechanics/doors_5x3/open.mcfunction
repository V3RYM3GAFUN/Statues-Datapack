execute unless function statues:feature_flags/check_doors_5x3_flags run return fail

playsound statues:game.door.large.open master @a ~ ~ ~ 1 0.85
data merge entity @e[tag=5x3left,distance=..2,sort=nearest,limit=1,y_rotation=90] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[-2.65f,0.5f,0f]}}
data merge entity @e[tag=5x3right,distance=..2,sort=nearest,limit=1,y_rotation=90] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[2.6f,0.5f,0f]}}
execute as @s[y_rotation=0] run fill ~2 ~2 ~ ~-2 ~ ~ air replace barrier
execute as @s[y_rotation=90] run fill ~ ~2 ~2 ~ ~ ~-2 air replace barrier

data merge entity @e[tag=5x3left,distance=..2,sort=nearest,limit=1,y_rotation=0] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[-2.65f,0.5f,0f]}}
data merge entity @e[tag=5x3right,distance=..2,sort=nearest,limit=1,y_rotation=0] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[2.6f,0.5f,0f]}}

data merge entity @e[tag=door5x3_status,distance=..3,sort=nearest,limit=1] {item:{id:"minecraft:lime_concrete"}}

tag @s add door5x3_opened
