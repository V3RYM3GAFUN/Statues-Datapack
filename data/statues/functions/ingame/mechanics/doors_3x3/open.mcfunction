execute unless function statues:feature_flags/check_doors_flags run return fail

playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 0.6
data merge entity @e[tag=3x3left,distance=..2,sort=nearest,limit=1,y_rotation=-90] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[-2.8f,0f,0f]}}
data merge entity @e[tag=3x3right,distance=..2,sort=nearest,limit=1,y_rotation=90] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[-2.8f,0f,0f]}}

data merge entity @e[tag=3x3left,distance=..2,sort=nearest,limit=1,y_rotation=180] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[-2.8f,0f,0f]}}
data merge entity @e[tag=3x3right,distance=..2,sort=nearest,limit=1,y_rotation=0] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[-2.8f,0f,0f]}}

data merge entity @e[tag=door3x3_status,distance=..3,sort=nearest,limit=1] {item:{id:"minecraft:lime_concrete"}}

tag @s add door3x3_opened
