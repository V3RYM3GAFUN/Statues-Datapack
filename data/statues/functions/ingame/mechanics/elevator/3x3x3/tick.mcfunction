#> Elevator States
# 0 - idle
# 1 - close doors and wait a couple ticks
# 2 - prepare
# 3 - moving up
# 4 - moving down
# 5 - wait a couple ticks and open doors

execute unless function statues:feature_flags/check_elevator_flags run return fail

execute unless entity @s[tag=elevator_room_3x3x3_gencol] run function statues:ingame/mechanics/elevator/3x3x3/generate_collisions

execute store result storage statues:data elevator_location int 1 run scoreboard players get @s Statues.ElevatorFrom
execute store result storage statues:data elevator_location_to int 1 run scoreboard players get @s Statues.ElevatorTo
execute if score @s Statues.ElevatorState matches 1 run function statues:ingame/mechanics/elevator/3x3x3/pre_move with storage statues:data
execute if score @s Statues.ElevatorState matches 2 run function statues:ingame/mechanics/elevator/3x3x3/pre_movement with storage statues:data
execute if score @s Statues.ElevatorState matches 3..4 run function statues:ingame/mechanics/elevator/3x3x3/movement with storage statues:data
execute if score @s Statues.ElevatorState matches 5 run function statues:ingame/mechanics/elevator/3x3x3/post_move with storage statues:data