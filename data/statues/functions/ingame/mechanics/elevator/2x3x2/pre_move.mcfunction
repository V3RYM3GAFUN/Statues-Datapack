execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail

execute if score @s Statues.ElevatorRemaining matches 0 run function statues:ingame/mechanics/elevator/2x3x2/pre_move_first with storage statues:data
execute if score @s Statues.ElevatorRemaining matches 0 if score @s Statues.ElevatorState matches 0 run return 0
$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_door,sort=nearest,limit=1] at @s run function statues:ingame/mechanics/elevator/2x3x2/door_close with entity @s data
$execute positioned ~ ~$(elevator_location_to) ~ as @e[tag=elevator_door,sort=nearest,limit=1] at @s run function statues:ingame/mechanics/elevator/2x3x2/door_close with entity @s data

scoreboard players remove @s Statues.ElevatorRemaining 1

execute if score @s Statues.ElevatorRemaining matches ..-10 run scoreboard players set @s Statues.ElevatorState 2
