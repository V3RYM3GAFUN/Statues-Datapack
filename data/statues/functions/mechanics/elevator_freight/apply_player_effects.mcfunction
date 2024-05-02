execute unless function statues:feature_flags/check_elevator_freight_flags run return fail

$execute if score @s Statues.ElevatorState matches 3 run effect give @a[scores={Statues.ElevatorPlayerStates=2..3}] minecraft:levitation $(elevator_effect_time) $(elevator_effect_amplifier) true
$execute if score @s Statues.ElevatorState matches 3 as @a[scores={Statues.ElevatorPlayerStates=2..3}] at @s run tp ~ ~$(elevator_tp_distance) ~
