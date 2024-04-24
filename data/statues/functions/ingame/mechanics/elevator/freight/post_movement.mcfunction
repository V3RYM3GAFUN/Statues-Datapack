execute unless function statues:feature_flags/check_elevator_freight_flags run return fail

function statues:ingame/mechanics/elevator/freight/apply_collision_movement_align

$execute at @s[y_rotation=0] align xyz positioned ~-2 ~$(elevator_location) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_x
$execute at @s[y_rotation=180] align xyz positioned ~-3 ~$(elevator_location) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_x
$execute at @s[y_rotation=90] align xyz positioned ~-2 ~$(elevator_location) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_z
$execute at @s[y_rotation=270] align xyz positioned ~-2 ~$(elevator_location) ~-3 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_z

effect clear @a[scores={Statues.ElevatorPlayerStates=..-1}] minecraft:levitation
execute as @a[scores={Statues.ElevatorPlayerStates=-2}] at @s run tp ~ ~1 ~
execute as @a[scores={Statues.ElevatorPlayerStates=-3}] at @s run tp ~ ~2 ~

$execute positioned ~ ~$(elevator_location_to) ~ as @e[tag=elevator_status,sort=nearest,limit=2,distance=..10] run data modify entity @s item.id set value "minecraft:green_concrete"

scoreboard players set @s Statues.ElevatorState 5
