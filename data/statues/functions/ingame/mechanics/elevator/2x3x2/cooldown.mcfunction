execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail

scoreboard players remove @s Statues.ElevatorRemaining 1
execute if score @s Statues.ElevatorRemaining matches -59.. run return 0

scoreboard players set @s Statues.ElevatorRemaining 0
scoreboard players set @s Statues.ElevatorState 0
