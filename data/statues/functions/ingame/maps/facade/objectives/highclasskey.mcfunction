execute at @e[type=minecraft:interaction,tag=objective_facade_highclasskey] run fill ~ ~ ~ ~ ~1 ~ air
fill -20 135 345 -20 136 345 glass_pane
fill 22 135 345 22 136 345 glass_pane

execute as @e[type=minecraft:interaction,tag=objective_facade_highclasskey] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_highclasskey] run data modify entity @s text set value "{'text':''}"

scoreboard players add $Objective Statues.Data 1

execute as @a at @s run playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1.5

clear @a[nbt={SelectedItem:{tag:{Tags:["facade_highclass_item"]}}}] iron_ingot{Tags:["facade_highclass_item"]}

weather thunder