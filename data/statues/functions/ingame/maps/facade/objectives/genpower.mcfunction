execute as @e[type=minecraft:interaction,tag=objective_facade_genpower] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_genpower] run data modify entity @s text set value "{'text':''}"

scoreboard players set $Objective Statues.Data 2

execute as @a[team=!Monster] at @s run playsound minecraft:ui.loom.take_result master @a ~ ~ ~ 1 0
