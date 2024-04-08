execute unless function statues:feature_flags/check_elevator_flags run return fail

execute if score @s Statues.ElevatorRemaining matches 0 run function statues:ingame/mechanics/elevator/3x3x3/pre_move_first with storage statues:data

scoreboard players remove @s Statues.ElevatorRemaining 1

execute if score @s Statues.ElevatorRemaining matches ..-10 run scoreboard players set @s Statues.ElevatorState 2
