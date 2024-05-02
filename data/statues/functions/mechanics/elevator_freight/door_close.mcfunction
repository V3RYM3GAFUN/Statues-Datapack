execute unless function statues:feature_flags/check_elevator_freight_flags run return fail

$execute align xyz positioned ~0.5 ~0.5 ~0.5 run fill ^-1 ^2 ^ ^1 ^ ^ iron_trapdoor[facing=$(facing),half=top,open=true]
execute if entity @s[tag=!elevator_door_closed] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
tag @s add elevator_door_closed
