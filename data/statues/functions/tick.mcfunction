function statues:feature_flags/tick_scoreboard
function statues:debug/show_entities

execute as @a[tag=!first_join] at @s run function statues:lobby/firstjoin

function statues:ingame/mechanics/nodrop

#> Queuing system
execute if score $Status Statues.Data matches ..1 run function statues:lobby/queuing/queuing_base
execute if score $Status Statues.Data matches ..1 run function statues:lobby/lobbymusic

#> Map voting
execute as @a[team=Lobby] run function statues:lobby/mapvoting/vote_base

#> Countdown timers
execute if score $Status Statues.Data matches 1..2 run function statues:lobby/pregame/countdown

execute if score $Status Statues.Data matches 3 run function statues:ingame/gametimer
execute if score $Status Statues.Data matches 3 run function statues:ingame/mechanics/misc
execute if score $Status Statues.Data matches 3 run function statues:ingame/mechanics/survivors/survivormusic

execute as @a[team=Survivor] at @s if score @s Statues.Dead matches 1.. run function statues:ingame/mechanics/survivors/survivors

#> Detect when a player leaves
execute as @a[team=!Dev] if score @s Player.Leave matches 1.. run function statues:lobby/leaving
#> Exception for Devs. Don't detect when they leave
scoreboard players set @a[team=Dev] Player.Leave 0

execute as @a[team=Survivor] run function statues:ingame/mechanics/survivors/hiding


#> Allows displaying the health of every survivor in a scoreboard
execute if score $Timer.Ticks Statues.Data matches 1 run scoreboard players reset * Statues.Survivors
execute as @a[team=Survivor] run scoreboard players operation @s Statues.Survivors = @s Statues.Health

#> Floors
execute if score floors Statues.FeatureFlags matches 1 run execute as @a[team=Survivor] at @s run function statues:ingame/mechanics/floors/tick
execute if score floors Statues.FeatureFlags matches 1 run execute as @a[tag=dev_always_show_floor_objective] at @s run function statues:ingame/mechanics/floors/tick

#> For testing
execute if score vents Statues.FeatureFlags matches 1 run function statues:ingame/mechanics/vents/tick
function statues:ingame/mechanics/misc
# function statues:ingame/mechanics/survivors/survivormusic

#> Make it so people who aren't survivors immediately get their death count reset
scoreboard players set @a[team=!Survivor] Statues.Dead 0

execute as @a[tag=tutorial] run function statues:lobby/tutorial-info/tick

#> Door handling
execute if score doors Statues.FeatureFlags matches 1 as @e[tag=door] at @s if entity @a[limit=1,gamemode=!spectator,distance=..5] run scoreboard players set $rundoors Statues.Data 1
execute if score $rundoors Statues.Data matches 1 run function statues:ingame/mechanics/doors/tick
scoreboard players set $rundoors Statues.Data 0
## execute at @e[tag=door] if entity @a[distance=..5,gamemode=!spectator] run function statues:ingame/mechanics/doors/tick




























# i hate you <3
# - Syxal_ owo smh UwU
# :3 - Semi
# shut - Syxal_
# Hehehehe


#item replace entity Syxal_ armor.head with minecraft:carved_pumpkin
#uwu