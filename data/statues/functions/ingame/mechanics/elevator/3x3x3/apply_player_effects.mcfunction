execute unless function statues:feature_flags/check_elevator_flags run return fail

execute as @a[scores={Statues.ElevatorPlayerStates=1}] run damage @s 1 statues:elevator by @e[tag=elevator_room_3x3x3,sort=nearest,limit=1]
execute as @a[scores={Statues.ElevatorPlayerStates=2}] run damage @s 1 statues:elevator by @e[tag=elevator_door,sort=nearest,limit=1]
$execute if score @s Statues.ElevatorState matches 2 run effect give @a[scores={Statues.ElevatorPlayerStates=2..3}] minecraft:levitation $(elevator_effect_time) 1 true
execute if score @s Statues.ElevatorState matches 2 as @a[scores={Statues.ElevatorPlayerStates=2..3}] at @s run tp ~ ~1 ~
