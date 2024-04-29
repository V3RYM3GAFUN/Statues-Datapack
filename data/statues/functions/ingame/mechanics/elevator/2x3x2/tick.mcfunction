#> Elevator States
# 0 - idle
# 1 - close doors and wait a couple ticks
# 2 - prepare
# 3 - moving up
# 4 - moving down
# 5 - wait a couple ticks and open doors
# 6 - cooldown period

execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail
execute unless score @s Statues.ElevatorSpeed matches 1.. run scoreboard players set @s Statues.ElevatorSpeed 1
execute unless score @s Statues.ElevatorState matches 0..6 run scoreboard players set @s Statues.ElevatorState 0

execute unless entity @s[tag=elevator_room_2x3x2_gencol] run function statues:ingame/mechanics/elevator/2x3x2/generate_collisions

execute if score @s Statues.ElevatorState matches 0..2 run scoreboard players operation $ElevatorOffY Statues.TempData = @s Statues.ElevatorFrom
execute if score @s Statues.ElevatorState matches 3..4 run function statues:ingame/mechanics/elevator/2x3x2/calculate_moving_location
execute if score @s Statues.ElevatorState matches 5.. run scoreboard players operation $ElevatorOffY Statues.TempData = @s Statues.ElevatorTo
execute unless score @s Statues.ElevatorState matches 3..4 run scoreboard players operation $ElevatorOffY Statues.TempData *= $100 Statues.Constants

execute store result storage statues:data elevator_location_cur float 0.01 run scoreboard players get $ElevatorOffY Statues.TempData
execute store result storage statues:data elevator_location int 1 run scoreboard players get @s Statues.ElevatorFrom
execute store result storage statues:data elevator_location_to int 1 run scoreboard players get @s Statues.ElevatorTo
execute if score @s Statues.ElevatorState matches 1 run function statues:ingame/mechanics/elevator/2x3x2/pre_move with storage statues:data
execute if score @s Statues.ElevatorState matches 2 run function statues:ingame/mechanics/elevator/2x3x2/pre_movement with storage statues:data
execute if score @s Statues.ElevatorState matches 3..4 run function statues:ingame/mechanics/elevator/2x3x2/movement with storage statues:data
execute if score @s Statues.ElevatorState matches 5 run function statues:ingame/mechanics/elevator/2x3x2/post_move with storage statues:data
execute if score @s Statues.ElevatorState matches 6 run function statues:ingame/mechanics/elevator/2x3x2/cooldown
