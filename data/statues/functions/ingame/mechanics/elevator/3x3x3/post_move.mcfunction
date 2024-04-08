execute unless function statues:feature_flags/check_elevator_flags run return fail

scoreboard players remove @s Statues.ElevatorRemaining 1
execute unless score @s Statues.ElevatorRemaining matches ..-15 run return 0

$execute positioned ~ ~$(elevator_location_to) ~ as @e[tag=elevator_door,sort=nearest,limit=1] at @s run function statues:ingame/mechanics/elevator/3x3x3/door_open
$execute positioned ~ ~$(elevator_location_to) ~ as @e[tag=elevator_status,sort=nearest,limit=1] run data modify entity @s item.id set value "minecraft:lime_concrete"

scoreboard players set @s Statues.ElevatorRemaining 0
scoreboard players set @s Statues.ElevatorState 0
scoreboard players operation @s Statues.ElevatorFrom = @s Statues.ElevatorTo