tag @s add Statues.ignore_vent_requirement
tag @s add tutorial

execute at @e[tag=tutorial_start] run tp @s ~ ~ ~

tellraw @s {"text": "Hellowo","color": "aqua"}