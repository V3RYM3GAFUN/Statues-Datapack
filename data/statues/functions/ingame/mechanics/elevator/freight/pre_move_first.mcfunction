execute unless function statues:feature_flags/check_elevator_freight_flags run return fail
execute if score @s Statues.ElevatorFrom = @s Statues.ElevatorTo run scoreboard players set @s Statues.ElevatorState 0
execute if score @s Statues.ElevatorFrom = @s Statues.ElevatorTo run return 0

$execute at @s[y_rotation=0] align xyz positioned ~-2 ~$(elevator_location) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_x
$execute at @s[y_rotation=180] align xyz positioned ~-3 ~$(elevator_location) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_x
$execute at @s[y_rotation=90] align xyz positioned ~-2 ~$(elevator_location) ~-2 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_z
$execute at @s[y_rotation=270] align xyz positioned ~-2 ~$(elevator_location) ~-3 run function statues:ingame/mechanics/elevator/freight/calculate_player_states_longer_z

execute as @a[scores={Statues.ElevatorPlayerStates=1}] run damage @s 1 statues:elevator by @e[tag=elevator_room_freight,sort=nearest,limit=1]
execute as @a[scores={Statues.ElevatorPlayerStates=2}] at @s run damage @s 1 statues:elevator by @e[tag=elevator_door,sort=nearest,limit=1]

$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_status,sort=nearest,limit=2,distance=..10] run data modify entity @s item.id set value "minecraft:orange_concrete"
