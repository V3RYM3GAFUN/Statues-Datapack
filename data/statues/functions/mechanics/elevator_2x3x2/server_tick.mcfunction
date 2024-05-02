execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail

scoreboard players set @a Statues.ElevatorPlayerStates 0
execute as @e[type=minecraft:item_display,tag=elevator_room_2x3x2] at @s run function statues:mechanics/elevator_2x3x2/tick
