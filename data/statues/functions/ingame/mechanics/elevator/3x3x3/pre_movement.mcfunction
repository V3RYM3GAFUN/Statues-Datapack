execute unless function statues:feature_flags/check_elevator_flags run return fail

$execute positioned ~ ~$(elevator_location) ~ positioned ~-1.675 ~-2 ~-1.675 as @a[dx=2.35,dy=2,dz=2.35,gamemode=!spectator] run scoreboard players set @s Statues.ElevatorPlayerStates 1
$execute positioned ~ ~$(elevator_location) ~ positioned ~-1.35 ~-2 ~-1.35 as @a[dx=1.7,dy=2,dz=1.7,gamemode=!spectator] run scoreboard players add @s Statues.ElevatorPlayerStates 1
$execute positioned ~ ~$(elevator_location) ~ positioned ~-0.9 ~-2 ~-0.9 as @a[dx=0.8,dy=2,dz=0.8,gamemode=!spectator] run scoreboard players add @s Statues.ElevatorPlayerStates 1

scoreboard players operation @s Statues.ElevatorRemaining = @s Statues.ElevatorTo
scoreboard players operation @s Statues.ElevatorRemaining -= @s Statues.ElevatorFrom
execute if score @s Statues.ElevatorRemaining matches ..0 run scoreboard players operation @s Statues.ElevatorRemaining *= $-1 Statues.StaticData
scoreboard players operation @s Statues.ElevatorRemaining *= $111 Statues.StaticData
scoreboard players operation @s Statues.ElevatorRemaining /= $10 Statues.StaticData

scoreboard players operation $ElevatorEffectTime Statues.TempData = @s Statues.ElevatorRemaining
scoreboard players add $ElevatorEffectTime Statues.TempData 19
scoreboard players operation $ElevatorEffectTime Statues.TempData /= $20 Statues.StaticData

execute if score @s Statues.ElevatorFrom < @s Statues.ElevatorTo run scoreboard players set @s Statues.ElevatorState 3
execute if score @s Statues.ElevatorFrom > @s Statues.ElevatorTo run scoreboard players set @s Statues.ElevatorState 4

$execute if score @s Statues.ElevatorState matches 4 run function statues:ingame/mechanics/elevator/3x3x3/apply_collision_movement_static {elevator_location: $(elevator_location), elevator_collision_y: "~-0.18"}

execute store result storage statues:data elevator_effect_time int 1 run scoreboard players get $ElevatorEffectTime Statues.TempData
function statues:ingame/mechanics/elevator/3x3x3/apply_player_effects with storage statues:data
execute if score @s Statues.ElevatorState matches 3 as @a[scores={Statues.ElevatorPlayerStates=2..3}] at @s run tp ~ ~1 ~

execute store result entity @s interpolation_duration int 1 run scoreboard players get @s Statues.ElevatorRemaining
execute store result storage statues:data elevator_to int 1 run scoreboard players get @s Statues.ElevatorTo
function statues:ingame/mechanics/elevator/3x3x3/apply_display_translation with storage statues:data

$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_status,sort=nearest,limit=1] run data modify entity @s item.id set value "minecraft:red_concrete"
$execute positioned ~ ~$(elevator_location_to) ~ as @e[tag=elevator_status,sort=nearest,limit=1] run data modify entity @s item.id set value "minecraft:yellow_concrete"
