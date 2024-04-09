effect give @a saturation infinite 0 true

function statues:feature_flags/tick_scoreboard
function statues:debug/show_entities

execute as @a[tag=!first_join] at @s run function statues:lobby/firstjoin

execute as @a[team=Spectator] run effect give @s minecraft:night_vision infinite 0 true
execute as @a[team=Lobby] run effect clear @s minecraft:night_vision

execute as @a[tag=!dev_ignore_forced_gamemode,team=Survivor] run gamemode adventure @s
execute as @a[tag=!dev_ignore_forced_gamemode,team=Lobby] run gamemode adventure @s
execute as @a[tag=!dev_ignore_forced_gamemode,team=Monster] run gamemode adventure @s
execute as @a[tag=!dev_ignore_forced_gamemode,team=Spectator] run gamemode spectator @s

#> Queuing system
execute if score $Status Statues.Data matches ..1 run function statues:lobby/queuing/queuing_base
execute if score $Status Statues.Data matches ..1 run function statues:lobby/lobbymusic


#> Map voting
execute as @a[team=Lobby] run function statues:lobby/mapvoting/vote_base

#> Countdown timers
execute if score $Status Statues.Data matches 1..2 run function statues:lobby/pregame/countdown

execute if score $Status Statues.Data matches 3 run function statues:ingame/gametimer
execute if score $Status Statues.Data matches 3 run function statues:ingame/mechanics/misc

execute if score $Status Statues.Data matches 3 if score dev_allow_debug_info Statues.FeatureFlags matches 0 run gamerule reducedDebugInfo true
execute if score $Status Statues.Data matches 3 if score dev_allow_debug_info Statues.FeatureFlags matches 1 run gamerule reducedDebugInfo false
execute unless score $Status Statues.Data matches 3 run gamerule reducedDebugInfo false

execute as @a[team=Survivor] run function statues:ingame/mechanics/survivors/monsterdistance
execute as @a[team=Survivor] at @s if score @s Statues.Dead matches 1.. run function statues:ingame/mechanics/survivors/death
execute as @a[team=Monster] run function statues:ingame/mechanics/survivors/survivordistance

execute as @a[scores={Statues.Monsters=4}] run item replace entity @s hotbar.4 with tipped_arrow{CustomPotionColor:2325012,display:{Name:'[{"text":"Insects","italic":false,"color":"#006633","bold":true}]'},custom_potion_effects:[{id:"minecraft:poison",duration:60,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:instant_health",duration:1,amplifier:0,show_particles:0b,show_icon:0b}]} 1

execute if score $Status Statues.Data matches 3 if score $Map Statues.Data matches 0 run function statues:ingame/maps/facade/tick
execute if score $Status Statues.Data matches 3 if score $Map Statues.Data matches 1 run function statues:ingame/maps/lockdown
execute if score $Status Statues.Data matches 3 if score $Map Statues.Data matches 2 run function statues:ingame/maps/origins

#> Detect when a player leaves
execute as @a[team=!Dev] if score @s Player.Leave matches 1.. run function statues:lobby/leaving
#> Exception for Devs. Don't detect when they leave
scoreboard players set @a[team=Dev] Player.Leave 0

execute if score hiding Statues.FeatureFlags matches 1 run function statues:ingame/mechanics/survivors/hiding


#> Allows displaying the health of every survivor in a scoreboard
execute if score $Timer.Ticks Statues.Data matches 1 run scoreboard players reset * Statues.Survivors
execute as @a[team=Survivor] run scoreboard players operation @s Statues.Survivors = @s Statues.Health

execute if score lights Statues.FeatureFlags matches 1 run function statues:ingame/mechanics/lights/tick

#> Floors
execute if score floors Statues.FeatureFlags matches 1 run execute as @a[team=Survivor] at @s run function statues:ingame/mechanics/floors/tick
execute if score floors Statues.FeatureFlags matches 1 run execute as @a[tag=dev_always_show_floor_objective] at @s run function statues:ingame/mechanics/floors/tick

#> Elevators
execute if score elevator Statues.FeatureFlags matches 1 run function statues:ingame/mechanics/elevator/tick

#> Spectators
execute if score spectators_actionbar Statues.FeatureFlags matches 1 run function statues:ingame/mechanics/spectators_actionbar/tick

#> Compass Tracker
execute if score compass_tracker Statues.FeatureFlags matches 1 run function statues:ingame/mechanics/compass_tracker/tick

#> For testing
execute if score vents Statues.FeatureFlags matches 1 run function statues:ingame/mechanics/vents/tick
execute if score dev_auto_convert_lights Statues.FeatureFlags matches 1 as @a[team=Dev] at @s run function statues:ingame/mechanics/lights/create_light_auto
function statues:ingame/mechanics/misc
# function statues:ingame/mechanics/survivors/survivormusic

#> Make it so people who aren't survivors immediately get their death count reset
scoreboard players set @a[team=!Survivor] Statues.Dead 0

execute if score tutorial Statues.FeatureFlags matches 1 run execute as @a[tag=tutorial] run function statues:lobby/tutorial-info/tick

#> Door handling
execute if score doors Statues.FeatureFlags matches 1 as @e[tag=door,type=minecraft:marker] at @s if entity @a[limit=1,gamemode=!spectator,distance=..5] run scoreboard players set $rundoors Statues.Data 1
execute if score $rundoors Statues.Data matches 1 run function statues:ingame/mechanics/doors/tick
scoreboard players set $rundoors Statues.Data 0
## execute at @e[tag=door] if entity @a[distance=..5,gamemode=!spectator] run function statues:ingame/mechanics/doors/tick

#> 3x3 Doors
execute at @a[gamemode=!spectator] if entity @e[tag=3x3door,distance=..3.5] as @e[tag=3x3] run function statues:ingame/mechanics/doors_3x3/tick


























# i hate you <3
# - Syxal_ owo smh UwU
# :3 - Semi
# shut - Syxal_
# Hehehehe


#item replace entity Syxal_ armor.head with minecraft:carved_pumpkin
#uwu