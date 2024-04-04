execute as @e[type=minecraft:interaction,tag=objective_facade_genkey] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_genkey] run data modify entity @s text set value "{'text':''}"

execute as @a[team=!Monster] at @s run playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1.5

scoreboard players add $Objective Statues.Data 1

clear @a iron_ingot{facade_genkey_item:1b} 1

time set 10000