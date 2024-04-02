tag @s add Statues.IgnoreVentRequirement
tag @s add Tutorial

execute at @e[tag=Tutorial] run tp @s ~ ~ ~

tellraw @s {"text": "Hellowo","color": "aqua"}