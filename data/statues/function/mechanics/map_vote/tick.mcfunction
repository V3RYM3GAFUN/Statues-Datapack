execute unless function statues:feature_flags/check_map_vote_flags run return fail

execute store result score facade Statues.MapVote if entity @a[tag=vote_facade,tag=queued]
execute store result score lockdown Statues.MapVote if entity @a[tag=vote_lockdown,tag=queued]
execute store result score origins Statues.MapVote if entity @a[tag=vote_origins,tag=queued]

data modify storage statues:temp map_vote set value {map_name:"facade"}
execute store result storage statues:temp map_vote.votes int 1 run scoreboard players get facade Statues.MapVote
function statues:mechanics/map_vote/vote_display_macro with storage statues:temp map_vote

data modify storage statues:temp map_vote set value {map_name:"lockdown"}
execute store result storage statues:temp map_vote.votes int 1 run scoreboard players get lockdown Statues.MapVote
function statues:mechanics/map_vote/vote_display_macro with storage statues:temp map_vote

data modify storage statues:temp map_vote set value {map_name:"origins"}
execute store result storage statues:temp map_vote.votes int 1 run scoreboard players get origins Statues.MapVote
function statues:mechanics/map_vote/vote_display_macro with storage statues:temp map_vote
