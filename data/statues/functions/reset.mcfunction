clear @a[team=!Dev]
effect clear @a[team=!Dev]
tag @a remove queued
tp @a[team=!Lobby,team=!Dev] 0.5 0.5 0.5 0 0
gamemode adventure @a[team=!Lobby,team=!Dev]
spawnpoint @a 0 0 0 0

effect give @a instant_health 1 100 true
effect give @a saturation infinite 100 true

tag @a remove solo
tag @a remove cloaker
tag @a remove medic
tag @a remove juggernaut

tag @e remove monster1
tag @e remove monster2

tag @a remove vote_facade
tag @a remove vote_lockdown
tag @a remove vote_origins

bossbar set countdown visible false
bossbar set gametimer visible false

team join Lobby @e[team=!Dev]

scoreboard players set $Status Statues.Data 0
scoreboard players set $Timer.Ticks Statues.Data 0
scoreboard players set * Statues.Dead 0
scoreboard players reset * Statues.Monsters
scoreboard players reset * Statues.Survivors
scoreboard players reset * Statues.Players
scoreboard players reset * Statues.abilities
scoreboard players reset * Statues.Objective
scoreboard players reset @a Statues.Data


#> Brings back the text for Power objective, as well closes the doors related to it
execute as @e[tag=objective_power] run data modify entity @s text set value "{'text':'Main Power','color':'dark_red'}"
function statues:ingame/mechanics/power_doors/door

#> Clears every container that had an item in it
execute at @e[tag=objective_reset] run data merge block ~ ~ ~ {Items:[]}

#> Resets every objective button 
execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=east,face=ceiling] run setblock ~ ~ ~ crimson_button[facing=east,face=ceiling]
execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=west,face=ceiling] run setblock ~ ~ ~ crimson_button[facing=west,face=ceiling]
execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=south,face=ceiling] run setblock ~ ~ ~ crimson_button[facing=south,face=ceiling]
execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=north,face=ceiling] run setblock ~ ~ ~ crimson_button[facing=north,face=ceiling]

execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=east,face=floor] run setblock ~ ~ ~ crimson_button[facing=east,face=floor]
execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=west,face=floor] run setblock ~ ~ ~ crimson_button[facing=west,face=floor]
execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=south,face=floor] run setblock ~ ~ ~ crimson_button[facing=south,face=floor]
execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=north,face=floor] run setblock ~ ~ ~ crimson_button[facing=north,face=floor]

execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=east,face=wall] run setblock ~ ~ ~ crimson_button[facing=east,face=wall]
execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=west,face=wall] run setblock ~ ~ ~ crimson_button[facing=west,face=wall]
execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=south,face=wall] run setblock ~ ~ ~ crimson_button[facing=south,face=wall]
execute at @e[tag=objective_reset] if block ~ ~ ~ warped_button[facing=north,face=wall] run setblock ~ ~ ~ crimson_button[facing=north,face=wall]

execute at @e[tag=pressure_plates] run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate


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