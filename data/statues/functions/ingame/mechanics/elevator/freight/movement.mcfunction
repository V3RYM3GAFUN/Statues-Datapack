execute unless function statues:feature_flags/check_elevator_freight_flags run return fail

scoreboard players remove @s Statues.ElevatorRemaining 1

scoreboard players operation $SoundTick Statues.TempData = @s Statues.ElevatorRemaining
scoreboard players operation $SoundTick Statues.TempData %= $20 Statues.Constants
$execute if score $SoundTick Statues.TempData matches 0 positioned ~ ~$(elevator_location_cur) ~ run function statues:ingame/mechanics/elevator/freight/sound_tick

$data merge storage statues:data {elevator_location: $(elevator_location)}
scoreboard players set $OffsetY Statues.TempData 9
scoreboard players operation $OffsetY Statues.TempData *= $-1 Statues.Constants
scoreboard players operation $OffsetY Statues.TempData *= @s Statues.ElevatorSpeed
execute store result storage statues:data elevator_collision_y_offset float 0.01 run scoreboard players get $OffsetY Statues.TempData
execute if score @s Statues.ElevatorState matches 4 run function statues:ingame/mechanics/elevator/freight/apply_collision_movement_relative with storage statues:data

execute if score @s Statues.ElevatorRemaining matches 0 run function statues:ingame/mechanics/elevator/freight/post_movement with storage statues:data
