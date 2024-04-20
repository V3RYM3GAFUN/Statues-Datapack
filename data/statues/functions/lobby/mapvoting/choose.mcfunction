summon marker 0 0 0 {Tags:["mapvote", "mapvote_facade"],CustomName:'[{"text":"Façade"}]'}
summon marker 0 1 0 {Tags:["mapvote", "mapvote_lockdown"],CustomName:'[{"text":"Lockdown"}]'}
summon marker 0 2 0 {Tags:["mapvote", "mapvote_origins"],CustomName:'[{"text":"Origins"}]'}

scoreboard players operation @e[tag=mapvote_facade] Statues.DynamicData = facade Statues.MapVote
scoreboard players operation @e[tag=mapvote_lockdown] Statues.DynamicData = lockdown Statues.MapVote
scoreboard players operation @e[tag=mapvote_origins] Statues.DynamicData = origins Statues.MapVote

scoreboard players set $MapVote.Max Statues.TempData 0
scoreboard players operation $MapVote.Max Statues.TempData > @e[tag=mapvote] Statues.DynamicData

execute as @e[tag=mapvote] if score @s Statues.DynamicData = $MapVote.Max Statues.TempData run tag @s add mapvote_wincandidate

#> Force Façade to be chosen, as it is the only map currently available
tag @e[tag=mapvote_facade,limit=1] add mapvote_winner
#tag @e[tag=mapvote_wincandidate,limit=1,sort=random] add mapvote_winner

execute store result score $Map Statues.StaticData run data get entity @e[tag=mapvote_winner,limit=1] Pos[1]

# kill @e[tag=mapvote]

effect clear @a[team=!Lobby] resistance