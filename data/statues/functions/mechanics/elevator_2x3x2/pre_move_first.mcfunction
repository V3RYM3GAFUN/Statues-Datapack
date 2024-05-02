execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail
execute if score @s Statues.ElevatorFrom = @s Statues.ElevatorTo run scoreboard players set @s Statues.ElevatorState 0
execute if score @s Statues.ElevatorFrom = @s Statues.ElevatorTo run return 0

$execute positioned ~ ~$(elevator_location) ~ positioned ~-1.175 ~-2 ~-1.175 as @a[dx=1.85,dy=2,dz=1.85,gamemode=!spectator] run scoreboard players set @s Statues.ElevatorPlayerStates 1
$execute positioned ~ ~$(elevator_location) ~ positioned ~-0.85 ~-2 ~-0.85 as @a[dx=0.7,dy=2,dz=0.7,gamemode=!spectator] run scoreboard players add @s Statues.ElevatorPlayerStates 1
$execute positioned ~ ~$(elevator_location) ~ positioned ~-0.4 ~-2 ~-0.4 as @a[dx=0,dy=2,dz=0,gamemode=!spectator] run scoreboard players add @s Statues.ElevatorPlayerStates 1

execute as @a[scores={Statues.ElevatorPlayerStates=1}] run damage @s 1 statues:elevator by @e[tag=elevator_room_2x3x2,sort=nearest,limit=1]
execute as @a[scores={Statues.ElevatorPlayerStates=2}] run damage @s 1 statues:elevator by @e[tag=elevator_door,sort=nearest,limit=1]

$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_status,sort=nearest,limit=1] run data modify entity @s item.id set value "minecraft:orange_concrete"
