clear @a[team=!Dev]
effect clear @a[team=!Dev]
tag @a remove queued
tp @a[team=!Lobby,team=!Dev] 0.5 0.5 0.5 0 0
gamemode adventure @a[team=!Lobby,team=!Dev]
spawnpoint @a 0 0 0 0

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

bossbar set countdown visible false
bossbar set gametimer visible false

team join Lobby @a[team=!Dev]

scoreboard players set $Status Statues.Data 0
scoreboard players set $Timer.Ticks Statues.Data 0
scoreboard players reset $MonsterSpawnDelay Statues.Data

scoreboard players set * Statues.Dead 0
scoreboard players reset * Statues.Monsters
scoreboard players reset * Statues.Survivors
scoreboard players reset * Statues.Players
scoreboard players reset * Statues.abilities
scoreboard players reset * Statues.Objective
scoreboard players reset @a Statues.Data


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
scoreboard players set $Objective Statues.Data 0 

function statues:ingame/maps/facade/objectives/reset
function statues:blockreset

time set 6000
weather clear

scoreboard players reset @e[tag=machine_sas] Statues.Data

## Old way for containers
# execute at @e[tag=test] run item replace block ~ ~ ~ container.1 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.2 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.3 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.4 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.5 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.6 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.7 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.8 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.9 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.10 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.11 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.12 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.13 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.14 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.15 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.16 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.17 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.18 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.19 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.20 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.21 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.22 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.23 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.24 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.25 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.26 with air
# execute at @e[tag=test] run item replace block ~ ~ ~ container.27 with air