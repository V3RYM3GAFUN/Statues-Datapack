scoreboard players set $Status Statues.DynamicData 2
scoreboard players reset $SongTime Statues.DynamicData

execute if score $QueuedCount Statues.DynamicData matches ..3 run tellraw @a {"text": "There are not enough players to start a game!", "color": "red","bold": true}
execute if score $QueuedCount Statues.DynamicData matches ..3 as @a at @s run playsound entity.item.break master @s ~ ~ ~ 1 1
execute if score $QueuedCount Statues.DynamicData matches ..3 run function statues:reset

execute if score $QueuedCount Statues.DynamicData matches 4.. run function statues:lobby/mapvoting/choose
execute if score $QueuedCount Statues.DynamicData matches 4..5 run function statues:lobby/pregame/1monster
execute if score $QueuedCount Statues.DynamicData matches 6.. run function statues:lobby/pregame/2monsters

execute if score $QueuedCount Statues.DynamicData matches 4.. run scoreboard players set $QueuedCount Statues.DynamicData 0
