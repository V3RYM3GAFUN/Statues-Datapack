scoreboard players set @s Statues.ElevatorRemaining -16
scoreboard players set @s Statues.ElevatorState 0
function statues:ingame/mechanics/elevator/3x3x3/apply_collision_movement_align
execute store result storage statues:data elevator_location int 1 run scoreboard players get @s Statues.ElevatorFrom
function statues:ingame/mechanics/elevator/3x3x3/update_lights with storage statues:data
execute store result entity @s transformation.translation[1] float 1 run scoreboard players get @s Statues.ElevatorTo
execute store result storage statues:data elevator_location_cur float 1 run scoreboard players get @s Statues.ElevatorTo
execute store result storage statues:data elevator_location_to int 1 run scoreboard players get @s Statues.ElevatorTo
function statues:ingame/mechanics/elevator/3x3x3/post_movement with storage statues:data
