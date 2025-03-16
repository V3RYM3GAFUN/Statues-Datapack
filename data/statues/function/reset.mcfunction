clear @a[team=!Dev]
effect clear @a[team=!Dev]
tag @a remove queued
execute if score $Status Statues.DynamicData matches 3 run function #statues:game_events/ingame/game_end
execute if score $Status Statues.DynamicData matches 1.. as @a[team=!Lobby,team=!Dev] run function statues:warps/newlobby
gamemode adventure @a[team=!Dev]
spawnpoint @a 0 0 0 0
team join Lobby @a[team=!Dev]

scoreboard players set $Status Statues.DynamicData 0

kill @e[type=item]
kill @e[type=marker,tag=trap]

execute as @a run attribute @s movement_speed base reset
execute as @a run attribute @s jump_strength base reset
execute as @a run attribute @s fall_damage_multiplier base set 0
execute as @a run attribute @s knockback_resistance modifier remove statues:no_knockback
execute as @a run attribute @s movement_speed modifier remove statues:super_quick
execute as @a run attribute @s step_height modifier remove statues:step
execute as @a run attribute @s attack_damage modifier remove statues:damage
execute as @a run attribute @s scale base reset
execute as @a run attribute @s movement_speed modifier remove statues:runner

effect give @a instant_health 1 100 true
effect give @a saturation infinite 100 true

bossbar set statues:countdown visible false
bossbar set statues:gametimer visible false
bossbar set statues:warptimer visible false

execute as @a run function statues:reset_player_tags
xp set @a 0 points
xp set @a 0 levels

scoreboard players set $Timer.Ticks Statues.DynamicData 0
scoreboard players set $CompassSelector Statues.DynamicData 0
scoreboard players set $QueuedCount Statues.DynamicData 0
scoreboard players set $RunningGameTicks Statues.DynamicData 0
scoreboard players reset $MonsterSpawnDelay Statues.DynamicData

scoreboard players reset * Statues.Dead
scoreboard players reset * Statues.Monsters
scoreboard players reset * Statues.Survivors
scoreboard players reset * Statues.Players
scoreboard players reset * Statues.Abilities
scoreboard players reset * Statues.TempData
scoreboard players reset * Statues.Barrels
scoreboard players reset * Statues.SurvivorTrail
scoreboard players reset * Statues.GameStatistics
scoreboard players reset * Statues.Advancements.IngameNoDamage
scoreboard players reset * Statues.DynamicMapId
scoreboard players reset * Statues.DynamicMapIdGiven

#> Turn off power
function statues:mechanics/lights/lights_off

#> Clean up light collision
function statues:mechanics/lights/garbage

#> Resets interaction entities
execute as @e[type=interaction,tag=objective_reset] run data merge entity @s {height:2}

#> Resets every objective button 
execute at @e[tag=objective_reset] run function statues:utils/button_warped_to_crimson

#> Resets every objective button 
execute at @e[tag=objective_reset,tag=elevator_button_power_lock] run function statues:utils/button_crimson_to_blackstone

#> Resets elevators
execute as @e[tag=objective_reset,tag=elevator_room] run scoreboard players operation @s Statues.ElevatorTo = @s Statues.DefaultElevatorY
execute as @e[tag=objective_reset,tag=elevator_room_3x3x3] at @s run function statues:mechanics/elevator_3x3x3/force_go_to
execute as @e[tag=objective_reset,tag=elevator_room_2x3x2] at @s run function statues:mechanics/elevator_2x3x2/force_go_to
execute as @e[tag=objective_reset,tag=elevator_room_freight] at @s run function statues:mechanics/elevator_freight/force_go_to
execute as @e[tag=objective_reset,tag=elevator_room_freight] at @s run data merge entity @s {brightness:{block:1,sky:0}}

#> Make background of text displays what they were
execute as @e[tag=objective_reset,type=text_display] run data modify entity @s background set value 1073741824

#> Resets the pressure plates for class selection
execute at @e[tag=pressure_plates] run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

#> Resets the current objective
scoreboard players set $Objective Statues.DynamicData 0 

#> Map specific reset
execute in statues:maps/facade run function statues:ingame/maps/facade/objectives/reset
execute in statues:maps/facade run function statues:ingame/maps/facade/blockreset

execute in statues:maps/lockdown run function statues:ingame/maps/lockdown/objectives/reset
execute in statues:maps/lockdown run function statues:ingame/maps/lockdown/blockreset

time set 6000
weather clear

scoreboard players reset @e[tag=machine_sas] Statues.DynamicData

scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.GameReset Statues.GameEventEnum
