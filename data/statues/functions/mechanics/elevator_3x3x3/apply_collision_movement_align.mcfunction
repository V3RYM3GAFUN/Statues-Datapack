execute unless function statues:feature_flags/check_elevator_3x3x3_flags run return fail

execute store result score $ElevatorY Statues.TempData run data get entity @s Pos[1] 2
scoreboard players remove $ElevatorY Statues.TempData 5
scoreboard players operation $ElevatorY Statues.TempData /= $2 Statues.Constants
scoreboard players operation $ElevatorY Statues.TempData += @s Statues.ElevatorTo

execute store result storage statues:data elevator_location int 1 run scoreboard players get @s Statues.ElevatorFrom
execute store result storage statues:data elevator_collision_y int 1 run scoreboard players get $ElevatorY Statues.TempData
function statues:mechanics/elevator_3x3x3/apply_collision_movement_static with storage statues:data
