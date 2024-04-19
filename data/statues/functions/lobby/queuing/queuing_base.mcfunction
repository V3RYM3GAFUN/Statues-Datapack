execute as @a[team=Lobby,tag=!queued] at @s if block ~ -64 ~ diamond_block run function statues:lobby/queuing/joinqueue
execute as @a[team=Lobby,tag=queued] at @s unless block ~ -64 ~ diamond_block unless block ~ -64 ~ gold_block run function statues:lobby/queuing/leavequeue
execute as @a[team=!Lobby,tag=queued] run function statues:lobby/queuing/leavequeue

#> Amount of players required before starting countdown
execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches 4.. if score $Status Statues.DynamicData matches 0 run scoreboard players set $Countdown.Ticks Statues.DynamicData 901
execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches 4.. run scoreboard players set $Status Statues.DynamicData 1

execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches 1.. if score $Status Statues.DynamicData matches 0 run scoreboard players set $Countdown.Ticks Statues.DynamicData 901
execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches 1.. run scoreboard players set $Status Statues.DynamicData 1