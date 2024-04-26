execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail

function statues:utils/fast_pythagoras_3d
scoreboard players operation $SpectatorDistanceD10 Statues.TempData = $PythagorasR Statues.TempData
scoreboard players operation $SpectatorDistanceD10 Statues.TempData /= $100000 Statues.Constants
scoreboard players operation $SpectatorDistanceM10 Statues.TempData = $PythagorasR Statues.TempData
scoreboard players operation $SpectatorDistanceM10 Statues.TempData /= $10000 Statues.Constants
scoreboard players operation $SpectatorDistanceM10 Statues.TempData %= $10 Statues.Constants
data modify storage statues:data actionbar_text append value {"score":{"objective":"Statues.TempData","name":"$SpectatorDistanceD10"}, "color": "green"}
execute unless score $SpectatorDistanceD10 Statues.TempData matches 0..9 run return 0
data modify storage statues:data actionbar_text append value {"text": ".", "color": "green"}
data modify storage statues:data actionbar_text append value {"score":{"objective":"Statues.TempData","name":"$SpectatorDistanceM10"}, "color": "green"}
