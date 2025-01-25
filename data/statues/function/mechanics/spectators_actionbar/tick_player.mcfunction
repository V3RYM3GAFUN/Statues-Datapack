execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail
tag @p[team=!Spectator,team=!Dev,team=!Lobby,gamemode=!spectator] add spectator_tracker
execute unless entity @a[tag=spectator_tracker] run return fail
execute store result score $PythagorasX Statues.TempData run data get entity @s Pos[0] 10
execute store result score $PythagorasY Statues.TempData run data get entity @s Pos[1] 10
execute store result score $PythagorasZ Statues.TempData run data get entity @s Pos[2] 10
execute store result score $SpectatorXTo Statues.TempData run data get entity @a[tag=spectator_tracker,limit=1] Pos[0] 10
execute store result score $SpectatorYTo Statues.TempData run data get entity @a[tag=spectator_tracker,limit=1] Pos[1] 10
execute store result score $SpectatorZTo Statues.TempData run data get entity @a[tag=spectator_tracker,limit=1] Pos[2] 10
scoreboard players operation $PythagorasX Statues.TempData -= $SpectatorXTo Statues.TempData
scoreboard players operation $PythagorasY Statues.TempData -= $SpectatorYTo Statues.TempData
scoreboard players operation $PythagorasZ Statues.TempData -= $SpectatorZTo Statues.TempData
scoreboard players operation $SpectatorXSquared Statues.TempData = $PythagorasX Statues.TempData
scoreboard players operation $SpectatorXSquared Statues.TempData *= $SpectatorXSquared Statues.TempData
scoreboard players operation $SpectatorYSquared Statues.TempData = $PythagorasY Statues.TempData
scoreboard players operation $SpectatorYSquared Statues.TempData *= $SpectatorYSquared Statues.TempData
scoreboard players operation $SpectatorZSquared Statues.TempData = $PythagorasZ Statues.TempData
scoreboard players operation $SpectatorZSquared Statues.TempData *= $SpectatorZSquared Statues.TempData
scoreboard players operation $SpectatorDistanceSquared Statues.TempData = $SpectatorXSquared Statues.TempData
scoreboard players operation $SpectatorDistanceSquared Statues.TempData += $SpectatorYSquared Statues.TempData
scoreboard players operation $SpectatorDistanceSquared Statues.TempData += $SpectatorZSquared Statues.TempData
scoreboard players operation $distance Statues.TempData = $SpectatorDistanceSquared Statues.TempData
data merge storage statues:data {actionbar_text:[{"text":"Tracking ","color":"green"},{"selector":"@a[tag=spectator_tracker,limit=1]"},{"text":" ","color":"green"}]}
function statues:mechanics/spectators_actionbar/create_healthbar_text
data modify storage statues:data actionbar_text append value {"text":" - ","color":"green"}
execute unless score $distance Statues.TempData matches 10000.. run function statues:mechanics/spectators_actionbar/tick_player_hp
execute if score $distance Statues.TempData matches 10000.. run function statues:mechanics/spectators_actionbar/tick_player_lp
data modify storage statues:data actionbar_text append value {"text":" blocks","color":"green"}
title @s actionbar {"storage":"statues:data","nbt":"actionbar_text","interpret":true}
tag @a[tag=spectator_tracker] remove spectator_tracker