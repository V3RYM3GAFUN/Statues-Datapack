execute unless function statues:feature_flags/check_elevator_flags run return fail

execute store result score $ElevatorY Statues.Data run data get entity @s Pos[1] 2
scoreboard players remove $ElevatorY Statues.Data 5
scoreboard players operation $ElevatorY Statues.Data /= $2 Statues.Data
scoreboard players operation $ElevatorY Statues.Data += @s Statues.ElevatorTo

execute store result storage statues:data elevator_location int 1 run scoreboard players get @s Statues.ElevatorFrom
execute store result storage statues:data elevator_collision_y int 1 run scoreboard players get $ElevatorY Statues.Data
function statues:ingame/mechanics/elevator/3x3x3/apply_collision_movement_static with storage statues:data
