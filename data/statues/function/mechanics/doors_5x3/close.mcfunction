execute unless function statues:feature_flags/check_doors_5x3_flags run return fail

playsound statues:game.door.large.close master @a ~ ~ ~ 1 0.85
execute as @e[tag=5x3display,distance=..2,sort=nearest,limit=2] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{translation:[0f,0.5f,0f]}}
execute as @s[y_rotation=0] run fill ~2 ~2 ~ ~-2 ~ ~ barrier replace air
execute as @s[y_rotation=90] run fill ~ ~2 ~2 ~ ~ ~-2 barrier replace air

data merge entity @e[tag=door5x3_status,distance=..3,sort=nearest,limit=1] {item:{id:"minecraft:red_concrete"}}

tag @s remove door5x3_opened
