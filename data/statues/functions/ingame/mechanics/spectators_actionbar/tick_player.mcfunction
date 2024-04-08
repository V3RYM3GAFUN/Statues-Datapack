execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail
tag @p[team=!Spectator,team=!Dev,team=!Lobby,gamemode=!spectator] add spectator_tracker
execute unless entity @a[tag=spectator_tracker] run return fail
execute store result score $SpectatorXFrom Statues.Data run data get entity @s Pos[0] 10
execute store result score $SpectatorYFrom Statues.Data run data get entity @s Pos[1] 10
execute store result score $SpectatorZFrom Statues.Data run data get entity @s Pos[2] 10
execute store result score $SpectatorXTo Statues.Data run data get entity @a[tag=spectator_tracker,limit=1] Pos[0] 10
execute store result score $SpectatorYTo Statues.Data run data get entity @a[tag=spectator_tracker,limit=1] Pos[1] 10
execute store result score $SpectatorZTo Statues.Data run data get entity @a[tag=spectator_tracker,limit=1] Pos[2] 10
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
execute unless score $distance Statues.Data matches 10000.. run function statues:ingame/mechanics/spectators_actionbar/tick_player_hp
execute if score $distance Statues.Data matches 10000.. run function statues:ingame/mechanics/spectators_actionbar/tick_player_lp
tag @a[tag=spectator_tracker] remove spectator_tracker