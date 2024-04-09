execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail

scoreboard players set $sqrtI Statues.Data 1
scoreboard players set $sqrtX Statues.Data 0
scoreboard players set $sqrtResult Statues.Data 0
execute if score $distance Statues.Data > $sqrtX Statues.Data run function statues:utils/sqrt
scoreboard players operation $SpectatorDistanceD10 Statues.Data = $sqrtResult Statues.Data
scoreboard players operation $SpectatorDistanceD10 Statues.Data /= $10 Statues.Data
scoreboard players operation $SpectatorDistanceM10 Statues.Data = $sqrtResult Statues.Data
scoreboard players operation $SpectatorDistanceM10 Statues.Data %= $10 Statues.Data
execute unless score $SpectatorDistanceD10 Statues.Data matches 0..9 run data modify storage statues:data actionbar_text append value {"score":{"objective":"Statues.Data","name":"$SpectatorDistanceD10"}, "color": "green"}
execute unless score $SpectatorDistanceD10 Statues.Data matches 0..9 run return 0
data modify storage statues:data actionbar_text append value {"score":{"objective":"Statues.Data","name":"$SpectatorDistanceD10"}, "color": "green"}
data modify storage statues:data actionbar_text append value {"text": ".", "color": "green"}
data modify storage statues:data actionbar_text append value {"score":{"objective":"Statues.Data","name":"$SpectatorDistanceM10"}, "color": "green"}
