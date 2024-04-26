execute unless function statues:feature_flags/check_elevator_3x3x3_flags run return fail

scoreboard players operation $ElevatorOffY Statues.TempData = @s Statues.ElevatorFrom
scoreboard players operation $ElevatorOffY Statues.TempData -= @s Statues.ElevatorTo
scoreboard players operation $ElevatorOffYT Statues.TempData = @s Statues.ElevatorRemaining
execute if score @s Statues.ElevatorState matches 3 run scoreboard players operation $ElevatorOffYT Statues.TempData *= $9 Statues.Constants
execute if score @s Statues.ElevatorState matches 4 run scoreboard players operation $ElevatorOffYT Statues.TempData *= $-9 Statues.Constants
scoreboard players operation $ElevatorOffY Statues.TempData -= $ElevatorOffYT Statues.TempData
scoreboard players operation $ElevatorOffYT Statues.TempData = @s Statues.ElevatorTo
scoreboard players operation $ElevatorOffYT Statues.TempData *= $100 Statues.Constants
scoreboard players operation $ElevatorOffY Statues.TempData += $ElevatorOffYT Statues.TempData
