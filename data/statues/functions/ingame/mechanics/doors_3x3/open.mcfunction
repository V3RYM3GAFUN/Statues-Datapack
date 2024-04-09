execute unless function statues:feature_flags/check_doors_flags run return fail

playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 0.6
data merge entity @e[tag=3x3display,distance=..2,sort=nearest,limit=1] {item:{tag:{CustomModelData:5}}}

tag @s add door3x3_opened
