execute if entity @s[tag=vote_origins] run tellraw @s {"text":"You have already voted for this map!","color":"red"}
execute if entity @s[tag=vote_origins] run playsound entity.villager.no master @s ~ ~ ~ 1 1

execute if entity @s[tag=!vote_origins] run tellraw @s {"text":"You have voted for [Origins]","color":"green"}
execute if entity @s[tag=!vote_origins] run playsound entity.villager.celebrate master @s ~ ~ ~ 1 1

tag @s add vote_origins
tag @s remove vote_facade
tag @s remove vote_lockdown