execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail

scoreboard players set $sqrtI Statues.Data 1
scoreboard players set $sqrtX Statues.Data 0
scoreboard players set $sqrtResult Statues.Data 0
execute if score $distance Statues.Data > $sqrtX Statues.Data run function statues:utils/sqrt
scoreboard players operation $SpectatorDistanceD10 Statues.Data = $sqrtResult Statues.Data
scoreboard players operation $SpectatorDistanceD10 Statues.Data /= $10 Statues.Data
scoreboard players operation $SpectatorDistanceM10 Statues.Data = $sqrtResult Statues.Data
scoreboard players operation $SpectatorDistanceM10 Statues.Data %= $10 Statues.Data
title @s actionbar [{"text":"Tracking ","color":"green"},{"selector":"@a[tag=spectator_tracker,limit=1]"},{"text":", Distance: ", "color": "green"},{"score":{"objective":"Statues.Data","name":"$SpectatorDistanceD10"}, "color": "green"},{"text":".", "color": "green"},{"score":{"objective":"Statues.Data","name":"$SpectatorDistanceM10"}, "color": "green"},{"text":" blocks", "color": "green"}]
