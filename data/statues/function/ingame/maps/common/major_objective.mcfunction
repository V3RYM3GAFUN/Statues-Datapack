effect give @a[team=Survivor] glowing 10 0 true

title @a[team=Monster] actionbar {"text": "[Hint]: Major objective completed!","color": "red"}

execute as @a[team=Monster] at @s run playsound minecraft:ambient.warped_forest.mood master @s ~ ~ ~ 1 1