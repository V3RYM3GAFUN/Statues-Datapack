scoreboard players set $Status Statues.DynamicData 2
scoreboard players reset $SongTime Statues.DynamicData

execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches ..0 run tellraw @a {"text": "There are not enough players to start a game!", "color": "red","bold": true}
execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches ..0 as @a at @s run playsound entity.item.break master @s ~ ~ ~ 1 1
execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches ..0 run function statues:reset
execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches ..0 run return 0

execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches ..3 run tellraw @a {"text": "There are not enough players to start a game!", "color": "red","bold": true}
execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. if score $QueuedCount Statues.DynamicData matches 12.. run tellraw @a {"text": "There are too many players to start a game!", "color": "red","bold": true}
execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. unless score $QueuedCount Statues.DynamicData matches 4..11 as @a at @s run playsound entity.item.break master @s ~ ~ ~ 1 1
execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. unless score $QueuedCount Statues.DynamicData matches 4..11 run function statues:reset
execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. unless score $QueuedCount Statues.DynamicData matches 4..11 run return 0

function statues:mechanics/mapvoting/choose
execute unless score $QueuedCount Statues.DynamicData matches 7.. run function statues:lobby/pregame/1monster
execute if score $QueuedCount Statues.DynamicData matches 7.. run function statues:lobby/pregame/2monsters

scoreboard players set $QueuedCount Statues.DynamicData 0

effect clear @a[team=!Lobby,team=!Dev] resistance