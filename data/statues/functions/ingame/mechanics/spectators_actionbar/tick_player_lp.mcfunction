execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail
function statues:utils/fast_pythagoras_3d
scoreboard players operation $SpectatorDistanceD10 Statues.TempData = $PythagorasR Statues.TempData
scoreboard players operation $SpectatorDistanceD10 Statues.TempData /= $100000 Statues.Constants
data modify storage statues:data actionbar_text append value {"score":{"objective":"Statues.TempData","name":"$SpectatorDistanceD10"}, "color": "green"}
