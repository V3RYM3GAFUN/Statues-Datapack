execute on attacker run tag @s[tag=!medic] add attacker

scoreboard players add @s Statues.DamageTaken 9
scoreboard players operation @s Statues.DamageTaken /= $10 Statues.Constants

execute store result storage statues:data damage int 1 run scoreboard players get @s Statues.DamageTaken
function statues:ingame/mechanics/misc_on_survivor_damage_survivor_macro with storage statues:data

execute on attacker run tag @s remove attacker
scoreboard players set @s Statues.DamageTaken 0
advancement revoke @s only statues:survivor_damage_survivor
