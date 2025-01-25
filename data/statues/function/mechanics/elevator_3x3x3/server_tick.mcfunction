execute unless function statues:feature_flags/check_elevator_3x3x3_flags run return fail

scoreboard players set @a Statues.ElevatorPlayerStates 0
execute as @e[type=minecraft:item_display,tag=elevator_room_3x3x3] at @s run function statues:mechanics/elevator_3x3x3/tick
