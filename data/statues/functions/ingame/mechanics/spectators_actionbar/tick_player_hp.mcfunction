execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail

scoreboard players set $sqrtI Statues.TempData 1
scoreboard players set $sqrtX Statues.TempData 0
scoreboard players set $sqrtResult Statues.TempData 0
execute if score $distance Statues.TempData > $sqrtX Statues.TempData run function statues:utils/sqrt
scoreboard players operation $SpectatorDistanceD10 Statues.TempData = $sqrtResult Statues.TempData
scoreboard players operation $SpectatorDistanceD10 Statues.TempData /= $10 Statues.StaticData
scoreboard players operation $SpectatorDistanceM10 Statues.TempData = $sqrtResult Statues.TempData
scoreboard players operation $SpectatorDistanceM10 Statues.TempData %= $10 Statues.StaticData
execute unless score $SpectatorDistanceD10 Statues.TempData matches 0..9 run data modify storage statues:data actionbar_text append value {"score":{"objective":"Statues.TempData","name":"$SpectatorDistanceD10"}, "color": "green"}
execute unless score $SpectatorDistanceD10 Statues.TempData matches 0..9 run return 0
data modify storage statues:data actionbar_text append value {"score":{"objective":"Statues.TempData","name":"$SpectatorDistanceD10"}, "color": "green"}
data modify storage statues:data actionbar_text append value {"text": ".", "color": "green"}
data modify storage statues:data actionbar_text append value {"score":{"objective":"Statues.TempData","name":"$SpectatorDistanceM10"}, "color": "green"}
