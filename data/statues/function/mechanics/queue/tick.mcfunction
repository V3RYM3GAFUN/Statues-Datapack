execute unless function statues:feature_flags/check_queue_flags run return fail

execute as @a[team=Lobby,tag=!queued] at @s if block ~ -64 ~ diamond_block run function statues:mechanics/queue/queue_join
execute as @a[team=Lobby,tag=queued] at @s unless block ~ -64 ~ diamond_block unless block ~ -64 ~ gold_block run function statues:mechanics/queue/queue_leave
execute as @a[team=!Lobby,tag=queued] run function statues:mechanics/queue/queue_leave

#> Amount of players required before starting countdown
execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches 4.. if score $Status Statues.DynamicData matches 0 run scoreboard players set $Countdown.Ticks Statues.DynamicData 901
execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches 4.. run scoreboard players set $Status Statues.DynamicData 1

execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches 1.. if score $Status Statues.DynamicData matches 0 run scoreboard players set $Countdown.Ticks Statues.DynamicData 901
execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches 1.. run scoreboard players set $Status Statues.DynamicData 1