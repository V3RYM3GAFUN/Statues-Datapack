execute as @e[type=minecraft:interaction,tag=objective_facade_genpower] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_genpower] run data modify entity @s text set value "{'text':''}"

scoreboard players add $Objective Statues.Data 1

execute as @a[team=!Monster] at @s run playsound minecraft:ui.loom.take_result ambient @a ~ ~ ~ 1 0
