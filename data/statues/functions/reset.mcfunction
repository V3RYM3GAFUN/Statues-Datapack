scoreboard players set $Status Statues.DynamicData 0

clear @a[team=!Dev]
effect clear @a[team=!Dev]
tag @a remove queued
tp @a[team=!Lobby,team=!Dev] 0.5 0.5 0.5 0 0
gamemode adventure @a[team=!Lobby,team=!Dev]
spawnpoint @a 0 0 0 0
team join Lobby @a[team=!Dev]

kill @e[type=item]

execute as @a run attribute @s generic.movement_speed base set 0.1

effect give @a instant_health 1 100 true
effect give @a saturation infinite 100 true

#> Get rid of class tags
tag @a remove solo
tag @a remove cloaker
tag @a remove medic
tag @a remove juggernaut
tag @a remove runner
tag @a remove shotgunner
tag @a remove gunner
tag @a remove brawler
tag @a remove marksman
tag @a remove trapper

tag @a remove class_selected

tag @e remove monster1
tag @e remove monster2
tag @e remove monster_chosen
tag @e remove 002

tag @a remove vote_facade
tag @a remove vote_lockdown
tag @a remove vote_origins

tag @a remove win
tag @a remove has_compass_tracker

bossbar set statues:countdown visible false
bossbar set statues:gametimer visible false


scoreboard players set $Timer.Ticks Statues.DynamicsData 0
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

# temporary
execute as @a[team=Lobby] run function statues:warps/newlobby