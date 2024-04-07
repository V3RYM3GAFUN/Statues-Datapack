#> Elevator States
# 0 - idle
# 1 - prepare
# 2 - moving up
# 3 - moving down


execute unless function statues:feature_flags/check_elevator_flags run return fail

execute unless entity @s[tag=elevator_room_3x3x3_gencol] run function statues:ingame/mechanics/elevator/3x3x3/generate_collisions

execute store result storage statues:data elevator_location int 1 run scoreboard players get @s Statues.ElevatorFrom
execute store result storage statues:data elevator_location_to int 1 run scoreboard players get @s Statues.ElevatorTo
execute if score @s Statues.ElevatorState matches 1 run function statues:ingame/mechanics/elevator/3x3x3/pre_movement with storage statues:data
execute if score @s Statues.ElevatorState matches 2..3 run function statues:ingame/mechanics/elevator/3x3x3/movement with storage statues:data