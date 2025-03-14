effect give @a[team=Survivor] glowing 10 0 true

title @a[team=Monster] actionbar {"translate": "statues.game.major_objective.monster","color": "red"}

execute as @a[team=Monster] at @s run playsound minecraft:ambient.warped_forest.mood master @s ~ ~ ~ 1 1

tellraw @a[team=Survivor] {"translate": "statues.game.major_objective.monster","color": "green"}
tellraw @a[team=Survivor] {"translate": "statues.game.major_objective.survivors","color": "gold","with": [{"translate": "statues.text.monsters","color": "red","bold": true}]}