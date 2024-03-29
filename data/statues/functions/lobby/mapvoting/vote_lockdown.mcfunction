execute if entity @s[tag=Vote.Lockdown] run tellraw @s {"text":"You have already voted for this map!","color":"red"}
execute if entity @s[tag=Vote.Lockdown] run playsound entity.villager.no master @s ~ ~ ~ 1 1

execute if entity @s[tag=!Vote.Lockdown] run tellraw @s {"text":"You have voted for [Lockdown]","color":"green"}
execute if entity @s[tag=!Vote.Lockdown] run playsound entity.villager.celebrate master @s ~ ~ ~ 1 1

tag @s add Vote.Lockdown
tag @s remove Vote.Origins
tag @s remove Vote.Facade