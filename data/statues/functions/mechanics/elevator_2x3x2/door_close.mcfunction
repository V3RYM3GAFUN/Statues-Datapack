execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail

$setblock ^0.5 ^ ^ iron_trapdoor[facing=$(facing),half=bottom,open=true]
$setblock ^-0.5 ^ ^ iron_trapdoor[facing=$(facing),half=bottom,open=true]
$setblock ^0.5 ^1 ^ iron_trapdoor[facing=$(facing),half=top,open=true]
$setblock ^-0.5 ^1 ^ iron_trapdoor[facing=$(facing),half=top,open=true]
execute if entity @s[tag=!elevator_door_closed] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
tag @s add elevator_door_closed
