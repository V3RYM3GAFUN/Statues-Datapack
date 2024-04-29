execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail

setblock ^-0.5 ^ ^ air
setblock ^0.5 ^ ^ air
setblock ^-0.5 ^1 ^ air
setblock ^0.5 ^1 ^ air

playsound minecraft:block.iron_door.open block @a ~ ~ ~
execute if entity @s[tag=elevator_door_closed] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
$execute align xyz positioned ~0.5 ~ ~0.5 if entity @s[tag=elevator_door_closed] run particle minecraft:cloud ~$(particle_x) ~$(particle_y) ~$(particle_z) $(particle_xs) $(particle_ys) $(particle_zs) 0.02 25
tag @s remove elevator_door_closed
