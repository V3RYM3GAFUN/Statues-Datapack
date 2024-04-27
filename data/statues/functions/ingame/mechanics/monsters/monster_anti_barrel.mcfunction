tellraw @s {"text": "Monsters cannot use barrels!","color": "red","bold": true}
tellraw @a [{"selector":"@s"},{"text": " tried to open a barrel! Shame on them...","color": "red"}]
effect give @s slowness 5 255 true
effect give @s weakness 5 255 true
scoreboard players reset @a Statues.Barrels