execute unless function statues:feature_flags/check_elevator_freight_flags run return fail

function statues:ingame/mechanics/elevator/freight/apply_collision_movement_align

$execute at @s[y_rotation=0] align xyz positioned ~-2 ~$(elevator_location_to) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_x
$execute at @s[y_rotation=180] align xyz positioned ~-3 ~$(elevator_location_to) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_x
$execute at @s[y_rotation=90] align xyz positioned ~-2 ~$(elevator_location_to) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_z
$execute at @s[y_rotation=270] align xyz positioned ~-2 ~$(elevator_location_to) ~-3 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_z

effect clear @a[scores={Statues.ElevatorPlayerStates=3..}] minecraft:levitation

$execute positioned ~ ~$(elevator_location_to) ~ as @e[tag=elevator_status,sort=nearest,limit=2,distance=..5] run data modify entity @s item.id set value "minecraft:green_concrete"

scoreboard players set @s Statues.ElevatorState 5
