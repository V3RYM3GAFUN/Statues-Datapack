execute unless function statues:feature_flags/check_elevator_freight_flags run return fail


$execute at @s[y_rotation=0] align xyz positioned ~-2 ~$(elevator_location) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_x
$execute at @s[y_rotation=180] align xyz positioned ~-3 ~$(elevator_location) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_x
$execute at @s[y_rotation=90] align xyz positioned ~-2 ~$(elevator_location) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_z
$execute at @s[y_rotation=270] align xyz positioned ~-2 ~$(elevator_location) ~-3 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_z

scoreboard players operation @s Statues.ElevatorRemaining = @s Statues.ElevatorTo
scoreboard players operation @s Statues.ElevatorRemaining -= @s Statues.ElevatorFrom
execute if score @s Statues.ElevatorRemaining matches ..0 run scoreboard players operation @s Statues.ElevatorRemaining *= $-1 Statues.Constants
scoreboard players operation @s Statues.ElevatorRemaining *= $111 Statues.Constants
scoreboard players operation @s Statues.ElevatorRemaining /= $10 Statues.Constants

scoreboard players operation $ElevatorEffectTime Statues.TempData = @s Statues.ElevatorRemaining
scoreboard players add $ElevatorEffectTime Statues.TempData 19
scoreboard players operation $ElevatorEffectTime Statues.TempData /= $20 Statues.Constants

execute if score @s Statues.ElevatorFrom < @s Statues.ElevatorTo run scoreboard players set @s Statues.ElevatorState 3
execute if score @s Statues.ElevatorFrom > @s Statues.ElevatorTo run scoreboard players set @s Statues.ElevatorState 4

$execute if score @s Statues.ElevatorState matches 4 run function statues:ingame/mechanics/elevator/freight/apply_collision_movement_static {elevator_location: $(elevator_location), elevator_collision_y: "~-0.18"}

execute store result storage statues:data elevator_effect_time int 1 run scoreboard players get $ElevatorEffectTime Statues.TempData
function statues:ingame/mechanics/elevator/freight/apply_player_effects with storage statues:data
execute if score @s Statues.ElevatorState matches 3 as @a[scores={Statues.ElevatorPlayerStates=2..3}] at @s run tp ~ ~1 ~

execute store result entity @s interpolation_duration int 1 run scoreboard players get @s Statues.ElevatorRemaining
execute store result storage statues:data elevator_to int 1 run scoreboard players get @s Statues.ElevatorTo
function statues:ingame/mechanics/elevator/freight/apply_display_translation with storage statues:data

$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_status,sort=nearest,limit=2,distance=..10] run data modify entity @s item.id set value "minecraft:red_concrete"
$execute positioned ~ ~$(elevator_location_to) ~ as @e[tag=elevator_status,sort=nearest,limit=2,distance=..10] run data modify entity @s item.id set value "minecraft:yellow_concrete"
