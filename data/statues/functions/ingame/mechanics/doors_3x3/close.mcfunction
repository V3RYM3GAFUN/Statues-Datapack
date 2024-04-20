execute unless function statues:feature_flags/check_doors_3x3_flags run return fail

playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.6
execute as @e[tag=3x3display,distance=..2,sort=nearest,limit=2] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{translation:[0f,0f,0f]}}
execute as @s[y_rotation=0] run fill ~1 ~1 ~ ~-1 ~-1 ~ barrier replace air
execute as @s[y_rotation=90] run fill ~ ~1 ~1 ~ ~-1 ~-1 barrier replace air

data merge entity @e[tag=door3x3_status,distance=..3,sort=nearest,limit=1] {item:{id:"minecraft:red_concrete"}}

tag @s remove door3x3_opened
