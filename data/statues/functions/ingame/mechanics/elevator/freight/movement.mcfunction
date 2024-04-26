execute unless function statues:feature_flags/check_elevator_freight_flags run return fail

scoreboard players remove @s Statues.ElevatorRemaining 1

scoreboard players operation $SoundTick Statues.TempData = @s Statues.ElevatorRemaining
scoreboard players operation $SoundTick Statues.TempData %= $20 Statues.Constants
$execute if score $SoundTick Statues.TempData matches 0 positioned ~ ~$(elevator_location_cur) ~ run function statues:ingame/mechanics/elevator/freight/sound_tick

$execute if score @s Statues.ElevatorState matches 3 run function statues:ingame/mechanics/elevator/freight/apply_collision_movement_static {elevator_location: $(elevator_location), elevator_collision_y: "~0.09"}
$execute if score @s Statues.ElevatorState matches 4 run function statues:ingame/mechanics/elevator/freight/apply_collision_movement_static {elevator_location: $(elevator_location), elevator_collision_y: "~-0.09"}

execute if score @s Statues.ElevatorRemaining matches 0 run function statues:ingame/mechanics/elevator/freight/post_movement with storage statues:data
