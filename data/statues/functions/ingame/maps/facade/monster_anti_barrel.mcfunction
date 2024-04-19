execute at @e[tag=facade_monster_tp] run tp @s ~ ~ ~
tellraw @s {"text": "Monsters cannot use barrels!","color": "red","bold": true}
effect give @s slowness 10 255 true
effect give @s weakness 10 255 true
effect give @s blindness 10 0 true
scoreboard players reset @a Statues.Barrels