#> Elevator States
# 0 - idle
# 1 - close doors and wait a couple ticks
# 2 - prepare
# 3 - moving up
# 4 - moving down
# 5 - wait a couple ticks and open doors

execute unless function statues:feature_flags/check_elevator_freight_flags run return fail

execute unless entity @s[tag=elevator_room_freight_gencol] align xyz positioned ~0.5 ~ ~0.5 run function statues:ingame/mechanics/elevator/freight/generate_collisions

execute if score @s Statues.ElevatorState matches 0..2 run scoreboard players operation $ElevatorOffY Statues.TempData = @s Statues.ElevatorFrom
execute if score @s Statues.ElevatorState matches 3..4 run function statues:ingame/mechanics/elevator/freight/calculate_moving_location
execute if score @s Statues.ElevatorState matches 5.. run scoreboard players operation $ElevatorOffY Statues.TempData = @s Statues.ElevatorTo
execute unless score @s Statues.ElevatorState matches 3..4 run scoreboard players operation $ElevatorOffY Statues.TempData *= $100 Statues.StaticData

execute store result storage statues:data elevator_location_cur float 0.01 run scoreboard players get $ElevatorOffY Statues.TempData
execute store result storage statues:data elevator_location int 1 run scoreboard players get @s Statues.ElevatorFrom
execute store result storage statues:data elevator_location_to int 1 run scoreboard players get @s Statues.ElevatorTo
execute if score @s Statues.ElevatorState matches 1 run function statues:ingame/mechanics/elevator/freight/pre_move with storage statues:data
execute if score @s Statues.ElevatorState matches 2 run function statues:ingame/mechanics/elevator/freight/pre_movement with storage statues:data
execute if score @s Statues.ElevatorState matches 3..4 run function statues:ingame/mechanics/elevator/freight/movement with storage statues:data
execute if score @s Statues.ElevatorState matches 5 run function statues:ingame/mechanics/elevator/freight/post_move with storage statues:data