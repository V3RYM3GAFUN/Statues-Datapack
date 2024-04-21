clear @a[team=!Dev]
effect clear @a[team=!Dev]
tag @a remove queued
execute if score $Status Statues.DynamicData matches 3 run function statues:game_events/game_end
execute if score $Status Statues.DynamicData matches 1.. as @a[team=!Lobby,team=!Dev] run function statues:warps/newlobby
gamemode adventure @a[team=!Dev]
spawnpoint @a 0 0 0 0
team join Lobby @a[team=!Dev]

scoreboard players set $Status Statues.DynamicData 0

kill @e[type=item]

execute as @a run attribute @s generic.movement_speed base set 0.1

effect give @a instant_health 1 100 true
effect give @a saturation infinite 100 true

bossbar set statues:countdown visible false
bossbar set statues:gametimer visible false

execute as @a run function statues:reset_player_tags

scoreboard players set $Timer.Ticks Statues.DynamicData 0
scoreboard players set $CompassSelector Statues.DynamicData 0
scoreboard players set $QueuedCount Statues.DynamicData 0
scoreboard players set $RunningGameTicks Statues.DynamicData 0
scoreboard players reset $MonsterSpawnDelay Statues.DynamicData

scoreboard players set * Statues.Dead 0
scoreboard players reset * Statues.Monsters
scoreboard players reset * Statues.Survivors
scoreboard players reset * Statues.Players
scoreboard players reset * Statues.abilities
scoreboard players reset * Statues.Objective
scoreboard players reset * Statues.TempData
scoreboard players reset * Statues.Barrels

#> Turn off power
function statues:ingame/mechanics/lights/lights_off

#> Clears every container that had an item in it
execute at @e[tag=objective_reset] run data merge block ~ ~ ~ {Items:[]}

#> Resets interaction entities
execute as @e[type=interaction,tag=objective_reset] run data merge entity @s {height:2}

#> Resets every objective button 
execute at @e[tag=objective_reset] run function statues:utils/button_warped_to_crimson

#> Resets the pressure plates for class selection
execute at @e[tag=pressure_plates] run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

#> Resets the current objective
scoreboard players set $Objective Statues.DynamicData 0 

#> Map specific reset
function statues:ingame/maps/facade/objectives/reset
function statues:ingame/maps/facade/blockreset

time set 6000
weather clear

scoreboard players reset @e[tag=machine_sas] Statues.DynamicData

scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.GameReset Statues.GameEventEnum
