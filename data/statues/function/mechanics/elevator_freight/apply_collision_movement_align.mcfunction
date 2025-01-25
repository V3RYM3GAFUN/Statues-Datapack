execute unless function statues:feature_flags/check_elevator_freight_flags run return fail

execute store result score $ElevatorY Statues.TempData run data get entity @s Pos[1]
scoreboard players remove $ElevatorY Statues.TempData 3
scoreboard players operation $ElevatorY Statues.TempData += @s Statues.ElevatorTo
scoreboard players operation $ElevatorY Statues.TempData *= $10000 Statues.Constants
scoreboard players operation $ElevatorY Statues.TempData -= $625 Statues.Constants

execute store result storage statues:data elevator_location int 1 run scoreboard players get @s Statues.ElevatorFrom
execute store result storage statues:data elevator_collision_y float 0.0001 run scoreboard players get $ElevatorY Statues.TempData
function statues:mechanics/elevator_freight/apply_collision_movement_static with storage statues:data
