execute unless function statues:feature_flags/check_elevator_3x3x3_flags run return fail

$setblock ~ ~ ~ iron_trapdoor[facing=$(facing),half=bottom,open=true]
$setblock ~ ~1 ~ iron_trapdoor[facing=$(facing),half=top,open=true]
execute if entity @s[tag=!elevator_door_closed] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
tag @s add elevator_door_closed
