execute unless function statues:feature_flags/check_doors_flags run return fail

playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.6
data merge entity @e[tag=3x3display,distance=..2,sort=nearest,limit=1] {item:{tag:{CustomModelData:6}}}
data merge entity @e[tag=door3x3_status,distance=..3,sort=nearest,limit=1] {item:{id:"minecraft:red_concrete"}}

tag @s remove door3x3_opened
