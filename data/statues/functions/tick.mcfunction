execute as @a[tag=!FirstJoin] at @s run function statues:lobby/firstjoin

function statues:ingame/mechanics/nodrop

#> Queuing system
execute if score $Status Statues.Data matches ..1 run function statues:lobby/queuing/queuing_base
execute if score $Status Statues.Data matches ..1 run function statues:lobby/lobbymusic

#> Map voting
execute if entity @a[team=Lobby] run function statues:lobby/mapvoting/vote_base

#> Countdown timers
execute if score $Status Statues.Data matches 1..2 run function statues:lobby/pregame/countdown

execute if score $Status Statues.Data matches 3 run function statues:ingame/gametimer
execute if score $Status Statues.Data matches 3 run function statues:ingame/mechanics/survivors/survivormusic
execute if score $Status Statues.Data matches 3 run function statues:ingame/mechanics/misc

execute as @a[team=Survivor] at @s if score @s Statues.Dead matches 1.. run function statues:ingame/mechanics/survivors/survivors

#> Detect when a player leaves
execute as @a[team=!Dev] if score @s Player.Leave matches 1.. run function statues:lobby/leaving
scoreboard players set @a[team=Dev] Player.Leave 0

function statues:ingame/mechanics/survivors/hiding


#> Allows displaying the health of every survivor in a scoreboard
execute if score $Timer.Ticks Statues.Data matches 1 run scoreboard players reset * Statues.Survivors
execute as @a[team=Survivor] run scoreboard players operation @s Statues.Survivors = @s Statues.Health

#> Door handling
function statues:ingame/mechanics/doors/tick

#> Floors
execute as @a[team=Survivor] at @s run function statues:ingame/mechanics/floors/tick

#> For testing
function statues:ingame/mechanics/vents/tick
function statues:ingame/mechanics/misc
function statues:ingame/mechanics/survivors/survivormusic

#> Make it so people who aren't survivors immediately get their death count reset
scoreboard players set @a[team=!Survivor] Statues.Dead 0

execute as @a[tag=tutorial] run function statues:lobby/tutorial-info/hiding






























# i hate you <3
# - Syxal_ owo smh UwU
# :3 - Semi
# shut - Syxal_
# Hehehehe


#item replace entity Syxal_ armor.head with minecraft:carved_pumpkin
#uwu