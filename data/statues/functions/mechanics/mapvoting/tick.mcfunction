execute store result score facade Statues.MapVote if entity @a[tag=vote_facade,tag=queued]
execute store result score lockdown Statues.MapVote if entity @a[tag=vote_lockdown,tag=queued]
execute store result score origins Statues.MapVote if entity @a[tag=vote_origins,tag=queued]

data merge storage statues:data {mapvote:{map_name:"facade"}}
execute store result storage statues:data mapvote.votes int 1 run scoreboard players get facade Statues.MapVote
function statues:mechanics/mapvoting/vote_display_macro with storage statues:data mapvote

data merge storage statues:data {mapvote:{map_name:"lockdown"}}
execute store result storage statues:data mapvote.votes int 1 run scoreboard players get lockdown Statues.MapVote
function statues:mechanics/mapvoting/vote_display_macro with storage statues:data mapvote

data merge storage statues:data {mapvote:{map_name:"origins"}}
execute store result storage statues:data mapvote.votes int 1 run scoreboard players get origins Statues.MapVote
function statues:mechanics/mapvoting/vote_display_macro with storage statues:data mapvote
