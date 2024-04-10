execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail
scoreboard players operation $distance Statues.TempData /= $100 Statues.StaticData
scoreboard players set $sqrtI Statues.TempData 1
scoreboard players set $sqrtX Statues.TempData 0
scoreboard players set $sqrtResult Statues.TempData 0
execute if score $distance Statues.TempData > $sqrtX Statues.TempData run function statues:utils/sqrt
scoreboard players operation $SpectatorDistanceD10 Statues.TempData = $sqrtResult Statues.TempData
data modify storage statues:data actionbar_text append value {"score":{"objective":"Statues.TempData","name":"$SpectatorDistanceD10"}, "color": "green"}
