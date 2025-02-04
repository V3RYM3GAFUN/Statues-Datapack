tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"translate":"statues.game.facade.objective.armorypickup","color":"green"}]

execute as @a[team=!Monster] at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 0

execute as @e[type=text_display,tag=objective_facade_armory] run data modify entity @s text set value "{\"text\":\"\"}"
execute as @e[type=text_display,tag=objective_facade_armory] run data modify entity @s background set value 0