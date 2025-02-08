execute unless function statues:feature_flags/check_game_replay_flags run return fail

execute unless score $ReplayWatching Statues.DynamicData matches 1 run tellraw @s {"color":"red","text":"Cannot end replay while not watching replay"}
execute unless score $ReplayWatching Statues.DynamicData matches 1 run return fail

kill @e[tag=game_replay_entity]
data remove storage statues:game_replay playing_replay
scoreboard players set $Status Statues.DynamicData 1
function statues:reset
scoreboard players set $ReplayWatching Statues.DynamicData 0
scoreboard players set $ReplayFreeze Statues.DynamicData 0