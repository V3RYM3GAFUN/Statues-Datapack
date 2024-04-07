tag @p[team=!Spectator,team=!Dev,team=!Lobby,gamemode=!spectator] add spectator_tracker
execute unless entity @a[tag=spectator_tracker] run return fail
execute store result score $SpectatorXFrom Statues.Data run data get entity @s Pos[0] 100
execute store result score $SpectatorYFrom Statues.Data run data get entity @s Pos[1] 100
execute store result score $SpectatorZFrom Statues.Data run data get entity @s Pos[2] 100
execute store result score $SpectatorXTo Statues.Data run data get entity @a[tag=spectator_tracker,limit=1] Pos[0] 100
execute store result score $SpectatorYTo Statues.Data run data get entity @a[tag=spectator_tracker,limit=1] Pos[1] 100
execute store result score $SpectatorZTo Statues.Data run data get entity @a[tag=spectator_tracker,limit=1] Pos[2] 100
scoreboard players operation $SpectatorXSquared Statues.Data = $SpectatorXFrom Statues.Data
scoreboard players operation $SpectatorXSquared Statues.Data -= $SpectatorXTo Statues.Data
scoreboard players operation $SpectatorXSquared Statues.Data *= $SpectatorXSquared Statues.Data
scoreboard players operation $SpectatorYSquared Statues.Data = $SpectatorYFrom Statues.Data
scoreboard players operation $SpectatorYSquared Statues.Data -= $SpectatorYTo Statues.Data
scoreboard players operation $SpectatorYSquared Statues.Data *= $SpectatorYSquared Statues.Data
scoreboard players operation $SpectatorZSquared Statues.Data = $SpectatorZFrom Statues.Data
scoreboard players operation $SpectatorZSquared Statues.Data -= $SpectatorZTo Statues.Data
scoreboard players operation $SpectatorZSquared Statues.Data *= $SpectatorZSquared Statues.Data
scoreboard players operation $SpectatorDistanceSquared Statues.Data = $SpectatorXSquared Statues.Data
scoreboard players operation $SpectatorDistanceSquared Statues.Data += $SpectatorYSquared Statues.Data
scoreboard players operation $SpectatorDistanceSquared Statues.Data += $SpectatorZSquared Statues.Data
scoreboard players operation $distance Statues.Data = $SpectatorDistanceSquared Statues.Data
scoreboard players set $sqrtI Statues.Data 1
scoreboard players set $sqrtX Statues.Data 0
scoreboard players set $sqrtResult Statues.Data 0
execute if score $distance Statues.Data > $sqrtX Statues.Data run function statues:utils/sqrt
scoreboard players operation $SpectatorDistanceD10 Statues.Data = $sqrtResult Statues.Data
scoreboard players operation $SpectatorDistanceD10 Statues.Data /= $100 Statues.Data
scoreboard players operation $SpectatorDistanceM10 Statues.Data = $sqrtResult Statues.Data
scoreboard players operation $SpectatorDistanceM10 Statues.Data /= $10 Statues.Data
scoreboard players operation $SpectatorDistanceM10 Statues.Data %= $10 Statues.Data
title @s actionbar [{"text":"Tracking ","color":"green"},{"selector":"@a[tag=spectator_tracker,limit=1]"},{"text":", Distance: ", "color": "green"},{"score":{"objective":"Statues.Data","name":"$SpectatorDistanceD10"}, "color": "green"},{"text":".", "color": "green"},{"score":{"objective":"Statues.Data","name":"$SpectatorDistanceM10"}, "color": "green"},{"text":" blocks", "color": "green"}]
tag @a[tag=spectator_tracker] remove spectator_tracker