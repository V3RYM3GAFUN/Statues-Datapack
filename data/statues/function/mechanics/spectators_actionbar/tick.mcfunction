execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail
# execute as @a[team=Spectator,tag=!dev_always_show_nearby_players] at @s run function statues:mechanics/spectators_actionbar/tick_player
# execute as @a[tag=dev_always_show_nearby_players] at @s run function statues:mechanics/spectators_actionbar/tick_player

execute as @a unless entity @s[team=!Spectator,tag=!dev_always_show_nearby_players] at @s run function statues:mechanics/spectators_actionbar/tick_player