execute unless function statues:feature_flags/check_elevator_flags run return fail

scoreboard players remove @s Statues.ElevatorRemaining 1

scoreboard players operation $SoundTick Statues.Data = @s Statues.ElevatorRemaining
scoreboard players operation $SoundTick Statues.Data %= $20 Statues.Data
$execute if score $SoundTick Statues.Data matches 0 positioned ~ ~$(elevator_location_cur) ~ run function statues:ingame/mechanics/elevator/3x3x3/sound_tick

$execute if score @s Statues.ElevatorState matches 3 run function statues:ingame/mechanics/elevator/3x3x3/apply_collision_movement_static {elevator_location: $(elevator_location), elevator_collision_y: "~0.09"}
$execute if score @s Statues.ElevatorState matches 4 run function statues:ingame/mechanics/elevator/3x3x3/apply_collision_movement_static {elevator_location: $(elevator_location), elevator_collision_y: "~-0.09"}

execute if score @s Statues.ElevatorRemaining matches 0 run function statues:ingame/mechanics/elevator/3x3x3/post_movement with storage statues:data
