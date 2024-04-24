execute unless function statues:feature_flags/check_elevator_freight_flags run return fail

scoreboard players operation $ElevatorOffY Statues.TempData = @s Statues.ElevatorFrom
scoreboard players operation $ElevatorOffY Statues.TempData -= @s Statues.ElevatorTo
scoreboard players operation $ElevatorOffYT Statues.TempData = @s Statues.ElevatorRemaining
execute if score @s Statues.ElevatorState matches 3 run scoreboard players operation $ElevatorOffYT Statues.TempData *= $9 Statues.StaticData
execute if score @s Statues.ElevatorState matches 4 run scoreboard players operation $ElevatorOffYT Statues.TempData *= $-9 Statues.StaticData
scoreboard players operation $ElevatorOffY Statues.TempData -= $ElevatorOffYT Statues.TempData
scoreboard players operation $ElevatorOffYT Statues.TempData = @s Statues.ElevatorTo
scoreboard players operation $ElevatorOffYT Statues.TempData *= $100 Statues.StaticData
scoreboard players operation $ElevatorOffY Statues.TempData += $ElevatorOffYT Statues.TempData
