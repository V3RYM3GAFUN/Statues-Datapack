execute if score tutorial Statues.FeatureFlags matches 1 if entity @s[tag=tutorial] run function statues:lobby/tutorial-info/tick_player
execute if score tutorial Statues.FeatureFlags matches 1 if entity @s[gamemode=!spectator] if entity @e[tag=lobby_tutorial_tp,distance=..1] run function statues:lobby/tutorial-info/start
