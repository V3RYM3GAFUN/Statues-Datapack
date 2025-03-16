execute unless function statues:feature_flags/check_map_vote_flags run return fail

execute if entity @s[tag=vote_origins] run tellraw @s {"translate":"statues.lobby.vote.fail","color":"red","with": [{"translate": "statues.map.origins","color": "#8e51df"}]}
execute if entity @s[tag=vote_origins] run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 1

execute if entity @s[tag=!vote_origins] run tellraw @s {"translate":"statues.lobby.vote.success","color":"green","with": [{"translate": "statues.map.origins","color": "#8e51df"}]}
execute if entity @s[tag=!vote_origins] run playsound block.note_block.bell master @s ~ ~ ~ 1 1

tag @s add vote_origins
tag @s remove vote_facade
tag @s remove vote_lockdown