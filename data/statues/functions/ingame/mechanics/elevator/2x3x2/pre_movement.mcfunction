execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail

$execute positioned ~ ~$(elevator_location) ~ positioned ~-1.175 ~-2 ~-1.175 as @a[dx=1.85,dy=2,dz=1.85,gamemode=!spectator] run scoreboard players set @s Statues.ElevatorPlayerStates 1
$execute positioned ~ ~$(elevator_location) ~ positioned ~-0.85 ~-2 ~-0.85 as @a[dx=0.7,dy=2,dz=0.7,gamemode=!spectator] run scoreboard players add @s Statues.ElevatorPlayerStates 1
$execute positioned ~ ~$(elevator_location) ~ positioned ~-0.4 ~-2 ~-0.4 as @a[dx=0,dy=2,dz=0,gamemode=!spectator] run scoreboard players add @s Statues.ElevatorPlayerStates 1

scoreboard players operation @s Statues.ElevatorRemaining = @s Statues.ElevatorTo
scoreboard players operation @s Statues.ElevatorRemaining -= @s Statues.ElevatorFrom
execute if score @s Statues.ElevatorRemaining matches ..0 run scoreboard players operation @s Statues.ElevatorRemaining *= $-1 Statues.Constants
scoreboard players operation @s Statues.ElevatorRemaining *= $111 Statues.Constants
scoreboard players operation @s Statues.ElevatorRemaining /= @s Statues.ElevatorSpeed
scoreboard players operation @s Statues.ElevatorRemaining /= $10 Statues.Constants

scoreboard players operation $ElevatorEffectTime Statues.TempData = @s Statues.ElevatorRemaining
scoreboard players add $ElevatorEffectTime Statues.TempData 19
scoreboard players operation $ElevatorEffectTime Statues.TempData /= $20 Statues.Constants

execute if score @s Statues.ElevatorFrom < @s Statues.ElevatorTo run scoreboard players set @s Statues.ElevatorState 3
execute if score @s Statues.ElevatorFrom > @s Statues.ElevatorTo run scoreboard players set @s Statues.ElevatorState 4

$execute if score @s Statues.ElevatorState matches 4 run function statues:ingame/mechanics/elevator/2x3x2/apply_collision_movement_static {elevator_location: $(elevator_location), elevator_collision_y: "~-0.18"}

execute store result storage statues:data elevator_effect_time int 1 run scoreboard players get $ElevatorEffectTime Statues.TempData
scoreboard players operation $ElevatorEffectAmplifier Statues.TempData = @s Statues.ElevatorSpeed
scoreboard players remove $ElevatorEffectAmplifier Statues.TempData 1
scoreboard players operation $ElevatorEffectAmplifier Statues.TempData *= $2 Statues.Constants
scoreboard players add $ElevatorEffectAmplifier Statues.TempData 1
execute store result storage statues:data elevator_effect_amplifier int 1 run scoreboard players get $ElevatorEffectAmplifier Statues.TempData
scoreboard players set $ElevatorTpDistance Statues.TempData 10
scoreboard players operation $ElevatorTpDistance Statues.TempData += @s Statues.ElevatorSpeed
execute store result storage statues:data elevator_tp_distance float 0.1 run scoreboard players get $ElevatorTpDistance Statues.TempData
function statues:ingame/mechanics/elevator/2x3x2/apply_player_effects with storage statues:data

execute store result entity @s interpolation_duration int 1 run scoreboard players get @s Statues.ElevatorRemaining
execute store result storage statues:data elevator_to int 1 run scoreboard players get @s Statues.ElevatorTo
function statues:ingame/mechanics/elevator/2x3x2/apply_display_translation with storage statues:data

$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_status,sort=nearest,limit=1] run data modify entity @s item.id set value "minecraft:red_concrete"
$execute positioned ~ ~$(elevator_location_to) ~ as @e[tag=elevator_status,sort=nearest,limit=1] run data modify entity @s item.id set value "minecraft:yellow_concrete"
