#> Lobby triggers (scores 195500-195599)
execute if entity @s[scores={Statues.ActionTrigger=195500}] run function statues:lobby/mapvoting/vote_facade
execute if entity @s[scores={Statues.ActionTrigger=195501}] run function statues:lobby/mapvoting/vote_lockdown
execute if entity @s[scores={Statues.ActionTrigger=195502}] run function statues:lobby/mapvoting/vote_origins
execute if entity @s[scores={Statues.ActionTrigger=195503}] unless entity @s[team=!Dev,team=!Lobby] run function statues:warps/newlobby

#> Tutorial triggers (scores 195600-159699)
execute if entity @s[scores={Statues.ActionTrigger=195600}] if function statues:feature_flags/check_tutorial_flags if entity @s[tag=tutorial] run function statues:lobby/tutorial-info/hiding
execute if entity @s[scores={Statues.ActionTrigger=195601}] if function statues:feature_flags/check_tutorial_flags if entity @s[tag=tutorial] run function statues:lobby/tutorial-info/vent-info
execute if entity @s[scores={Statues.ActionTrigger=195602}] if function statues:feature_flags/check_tutorial_flags if entity @s[tag=tutorial] run function statues:lobby/tutorial-info/buttons
execute if entity @s[scores={Statues.ActionTrigger=195603}] if function statues:feature_flags/check_tutorial_flags if entity @s[tag=tutorial] run function statues:lobby/tutorial-info/doors
execute if entity @s[scores={Statues.ActionTrigger=195604}] if function statues:feature_flags/check_tutorial_flags if entity @s[tag=tutorial] run function statues:lobby/tutorial-info/finish

#> Class preview triggers (scores 195700-195799)
# Class preview tp triggers (scores 195700-195719)
execute if entity @s[scores={Statues.ActionTrigger=195700}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run tp @s @e[tag=facade_info_room,limit=1]
execute if entity @s[scores={Statues.ActionTrigger=195701}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run tp @s @e[tag=lockdown_info_room,limit=1]
execute if entity @s[scores={Statues.ActionTrigger=195702}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run tp @s @e[tag=origins_info_room,limit=1]
# Class preview room triggers (scores 195720-195789)
execute if entity @s[scores={Statues.ActionTrigger=195720}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:warps/newlobby
execute if entity @s[scores={Statues.ActionTrigger=195721}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:lobby/class_preview/survivors/select_facade/brawler
execute if entity @s[scores={Statues.ActionTrigger=195722}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:lobby/class_preview/survivors/select_facade/cloaker
execute if entity @s[scores={Statues.ActionTrigger=195723}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:lobby/class_preview/survivors/select_facade/gunner
execute if entity @s[scores={Statues.ActionTrigger=195724}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:lobby/class_preview/survivors/select_facade/juggernaut
execute if entity @s[scores={Statues.ActionTrigger=195725}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:lobby/class_preview/survivors/select_facade/marksman
execute if entity @s[scores={Statues.ActionTrigger=195726}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:lobby/class_preview/survivors/select_facade/medic
execute if entity @s[scores={Statues.ActionTrigger=195727}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:lobby/class_preview/survivors/select_facade/runner
execute if entity @s[scores={Statues.ActionTrigger=195728}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:lobby/class_preview/survivors/select_facade/shotgunner
execute if entity @s[scores={Statues.ActionTrigger=195729}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:lobby/class_preview/survivors/select_facade/trapper
# Class preview survivor preview room triggers (scores 195790-195799)
execute if entity @s[scores={Statues.ActionTrigger=195790}] if function statues:feature_flags/check_class_preview_flags unless entity @s[team=!Dev,team=!Lobby] run function statues:lobby/class_preview/back_to_lobby

#> Credits room triggers (scores 195800-195899)
execute if entity @s[scores={Statues.ActionTrigger=195800}] unless entity @s[team=!Dev,team=!Lobby] run function statues:warps/newlobby

#> Debug triggers 250000-259999
execute if entity @s[scores={Statues.ActionTrigger=250000}] run function statues:mechanics/vents/integrity

scoreboard players reset @s Statues.ActionTrigger