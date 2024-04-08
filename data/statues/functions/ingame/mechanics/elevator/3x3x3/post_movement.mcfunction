execute unless function statues:feature_flags/check_elevator_flags run return fail

function statues:ingame/mechanics/elevator/3x3x3/apply_collision_movement_align

$execute positioned ~ ~$(elevator_location_to) ~ positioned ~-1.675 ~-2 ~-1.675 as @a[dx=2.35,dy=3,dz=2.35,gamemode=!spectator] run scoreboard players set @s Statues.ElevatorPlayerStates -1
$execute positioned ~ ~$(elevator_location_to) ~ positioned ~-1.675 ~-4 ~-1.675 as @a[dx=2.35,dy=1,dz=2.35,gamemode=!spectator] run scoreboard players remove @s Statues.ElevatorPlayerStates 1
$execute positioned ~ ~$(elevator_location_to) ~ positioned ~-1.675 ~-5 ~-1.675 as @a[dx=2.35,dy=2,dz=2.35,gamemode=!spectator] run scoreboard players remove @s Statues.ElevatorPlayerStates 1

effect clear @a[scores={Statues.ElevatorPlayerStates=..-1}] minecraft:levitation
execute as @a[scores={Statues.ElevatorPlayerStates=-2}] at @s run tp ~ ~1 ~
execute as @a[scores={Statues.ElevatorPlayerStates=-3}] at @s run tp ~ ~2 ~

$execute positioned ~ ~$(elevator_location_to) ~ as @e[tag=elevator_status,sort=nearest,limit=1] run data modify entity @s item.id set value "minecraft:green_concrete"

scoreboard players set @s Statues.ElevatorState 5
