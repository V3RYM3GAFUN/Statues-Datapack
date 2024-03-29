execute if entity @s[tag=Vote.Facade] run tellraw @s {"text":"You have already voted for this map!","color":"red"}
execute if entity @s[tag=Vote.Facade] run playsound entity.villager.no master @s ~ ~ ~ 1 1

execute if entity @s[tag=!Vote.Facade] run tellraw @s {"text":"You have voted for [Façade]","color":"green"}
execute if entity @s[tag=!Vote.Facade] run playsound entity.villager.celebrate master @s ~ ~ ~ 1 1

tag @s add Vote.Facade
tag @s remove Vote.Origins
tag @s remove Vote.Lockdown

