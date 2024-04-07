tellraw @s {"text": "You are the last one standing!","bold": true,"color": "red"}

title @s times 5t 20t 10t
title @s title ""
title @s subtitle {"text": "You're on your own.","bold": true,"color": "red"}

playsound minecraft:block.vault.activate ambient @s ~ ~ ~ 1 0

tag @s add solo