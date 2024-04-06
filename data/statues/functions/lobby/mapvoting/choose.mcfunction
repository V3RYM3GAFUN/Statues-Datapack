summon marker 0 0 0 {NoGravity:1b,Tags:["mapvote", "mapvote_facade"],CustomName:'[{"text":"Façade"}]'}
summon marker 0 1 0 {NoGravity:1b,Tags:["mapvote", "mapvote_lockdown"],CustomName:'[{"text":"Lockdown"}]'}
summon marker 0 2 0 {NoGravity:1b,Tags:["mapvote", "mapvote_origins"],CustomName:'[{"text":"Origins"}]'}

scoreboard players operation @e[tag=mapvote_facade] Statues.Data = Façade Statues.MapVote
scoreboard players operation @e[tag=mapvote_lockdown] Statues.Data = Lockdown Statues.MapVote
scoreboard players operation @e[tag=mapvote_origins] Statues.Data = Origins Statues.MapVote

scoreboard players set $MapVote.Max Statues.Data 0
scoreboard players operation $MapVote.Max Statues.Data > @e[tag=mapvote] Statues.Data

execute as @e[tag=mapvote] if score @s Statues.Data = $MapVote.Max Statues.Data run tag @s add mapvote_wincandidate
tag @e[tag=mapvote_wincandidate,limit=1,sort=random] add mapvote_winner
execute store result score $Map Statues.Data run data get entity @e[tag=mapvote_winner,limit=1] Pos[1]

# kill @e[tag=mapvote]

#> Force Façade to be chosen, as it is the only map currently available
scoreboard players set $Map Statues.Data 0