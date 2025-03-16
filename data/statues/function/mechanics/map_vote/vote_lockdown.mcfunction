execute unless function statues:feature_flags/check_map_vote_flags run return fail

execute if entity @s[tag=vote_lockdown] run tellraw @s {"translate":"statues.lobby.vote.fail","color":"red","with": [{"translate": "statues.map.lockdown","color": "#768aff"}]}
execute if entity @s[tag=vote_lockdown] run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 1

execute if entity @s[tag=!vote_lockdown] run tellraw @s {"translate":"statues.lobby.vote.success","color":"green","with": [{"translate": "statues.map.lockdown","color": "#768aff"}]}
execute if entity @s[tag=!vote_lockdown] run playsound block.note_block.bell master @s ~ ~ ~ 1 1

tag @s add vote_lockdown
tag @s remove vote_origins
tag @s remove vote_facade