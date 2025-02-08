execute unless function statues:feature_flags/check_game_replay_flags run return fail

execute unless score $ReplayWatching Statues.DynamicData matches 1 run tellraw @s {"color":"red","text":"There is no replay currently playing"}
execute unless score $ReplayWatching Statues.DynamicData matches 1 run return fail

function statues:lobby/spectate/query