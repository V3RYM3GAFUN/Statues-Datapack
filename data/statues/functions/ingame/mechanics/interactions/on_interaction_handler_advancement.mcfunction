execute at @s as @e[type=minecraft:interaction,distance=..5] at @s run function statues:ingame/mechanics/interactions/on_interaction_handler
execute at @s as @e[type=minecraft:interaction,distance=..5] run data remove entity @s interaction
advancement revoke @s only statues:interaction_check