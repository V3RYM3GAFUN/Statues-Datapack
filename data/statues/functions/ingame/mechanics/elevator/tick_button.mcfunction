execute unless function statues:feature_flags/check_elevator_flags run return fail
execute if block ~ ~ ~ minecraft:warped_button run function statues:utils/button_warped_to_crimson
$execute unless score $(elevator) Statues.ElevatorState matches 0 run function statues:utils/button_crimson_reset_powered
execute unless block ~ ~ ~ minecraft:crimson_button[powered=true] run return 0
function statues:utils/button_crimson_to_warped
$execute as $(elevator) if entity @s[tag=elevator_room_3x3x3] run scoreboard players set @s Statues.ElevatorTo $(elevator_y)
$execute as $(elevator) if entity @s[tag=elevator_room_3x3x3] run scoreboard players set @s Statues.ElevatorState 1
