execute unless function statues:feature_flags/check_doors_3x3_flags run return fail

playsound statues:game.door.large.open block @a ~ ~ ~ 1 1
data merge entity @e[tag=3x3left,distance=..2,sort=nearest,limit=1,y_rotation=-90] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[-2.8f,0f,0f]}}
data merge entity @e[tag=3x3right,distance=..2,sort=nearest,limit=1,y_rotation=90] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[-2.8f,0f,0f]}}
execute as @s[y_rotation=0] run fill ~1 ~1 ~ ~-1 ~-1 ~ air replace gray_stained_glass_pane
execute as @s[y_rotation=90] run fill ~ ~1 ~1 ~ ~-1 ~-1 air replace gray_stained_glass_pane

data merge entity @e[tag=3x3left,distance=..2,sort=nearest,limit=1,y_rotation=180] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[-2.8f,0f,0f]}}
data merge entity @e[tag=3x3right,distance=..2,sort=nearest,limit=1,y_rotation=0] {interpolation_duration:5,start_interpolation:0,transformation:{translation:[-2.8f,0f,0f]}}

data merge entity @e[tag=door3x3_status,distance=..3,sort=nearest,limit=1] {item:{id:"minecraft:lime_concrete"}}

tag @s add door3x3_opened

execute as @s[y_rotation=0] run fill ~1 ~1 ~ ~-1 ~-1 ~ air replace barrier
execute as @s[y_rotation=90] run fill ~ ~1 ~1 ~ ~-1 ~-1 air replace barrier