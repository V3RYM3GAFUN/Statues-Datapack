tellraw @s {"translate": "statues.game.nobarrel.monster","color": "red","bold": true}
tellraw @a [{"translate": "statues.game.nobarrel.chat","with": [{"selector":"@s"}],"color": "red"}]
# effect give @s slowness 5 255 true
# effect give @s weakness 5 255 true
scoreboard players reset @a Statues.Barrels