execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail

function statues:mechanics/elevator_2x3x2/apply_collision_movement_align

$execute positioned ~ ~$(elevator_location_to) ~ positioned ~-0.675 ~-2 ~-0.675 as @a[dx=1.25,dy=3,dz=1.25,gamemode=!spectator] run scoreboard players set @s Statues.ElevatorPlayerStates -1
$execute positioned ~ ~$(elevator_location_to) ~ positioned ~-0.675 ~-4 ~-0.675 as @a[dx=1.25,dy=1,dz=1.25,gamemode=!spectator] run scoreboard players remove @s Statues.ElevatorPlayerStates 1
$execute positioned ~ ~$(elevator_location_to) ~ positioned ~-0.675 ~-5 ~-0.675 as @a[dx=1.25,dy=2,dz=1.25,gamemode=!spectator] run scoreboard players remove @s Statues.ElevatorPlayerStates 1

effect clear @a[scores={Statues.ElevatorPlayerStates=..-1}] minecraft:levitation
execute as @a[scores={Statues.ElevatorPlayerStates=-2}] at @s run tp ~ ~1 ~
execute as @a[scores={Statues.ElevatorPlayerStates=-3}] at @s run tp ~ ~2 ~

$execute positioned ~ ~$(elevator_location_to) ~ as @e[tag=elevator_status,sort=nearest,limit=1] run data modify entity @s item.id set value "minecraft:green_concrete"

scoreboard players set @s Statues.ElevatorState 5
