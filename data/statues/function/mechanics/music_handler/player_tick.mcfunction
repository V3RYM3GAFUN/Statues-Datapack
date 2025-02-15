# execute unless function statues:feature_flags/check_music_handler_flags run return fail

execute if entity @s[team=Lobby] run function statues:mechanics/music_handler/lobby

execute if entity @s[team=Survivor] run function statues:mechanics/music_handler/survivor

execute if entity @s[team=Monster] run function statues:mechanics/music_handler/monster