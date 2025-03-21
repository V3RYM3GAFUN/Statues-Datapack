function statues:feature_flags/set_dev_allow_debug_info {value:1}
function statues:feature_flags/set_dev_allow_empty_game {value:1}
function statues:feature_flags/set_dev_infinite_game_time {value:1}
function statues:feature_flags/set_dev_no_start_requirement {value:1}

tag @a[tag=dev_stay_unqueued] remove queued
execute as @a[team=Lobby,tag=dev_queue_allow] at @s if block ~ -64 ~ diamond_block run tag @s add queued

scoreboard players set $Map Statues.DynamicData 0
scoreboard players set $Countdown.Ticks Statues.DynamicData 0
scoreboard players set $IsDevGame Statues.DynamicData 1
scoreboard players set $Status Statues.DynamicData 3

effect clear @a[tag=queued]

execute unless score $QueuedCount Statues.DynamicData matches 7.. run function statues:lobby/pregame/1monster
execute if score $QueuedCount Statues.DynamicData matches 7.. run function statues:lobby/pregame/2monsters

effect clear @a[tag=queued] glowing
bossbar set statues:countdown visible false
execute in statues:maps/facade run forceload add 95 79 -112 -80
schedule function statues:debug/start_game_internal 20t
