execute if entity @s[tag=vote_lockdown] run tellraw @s {"text":"You have already vote_ for this map!","color":"red"}
execute if entity @s[tag=vote_lockdown] run playsound entity.villager.no master @s ~ ~ ~ 1 1

execute if entity @s[tag=!vote_lockdown] run tellraw @s {"text":"You have vote_ for [Lockdown]","color":"green"}
execute if entity @s[tag=!vote_lockdown] run playsound entity.villager.celebrate master @s ~ ~ ~ 1 1

tag @s add vote_lockdown
tag @s remove vote_origins
tag @s remove vote_facade