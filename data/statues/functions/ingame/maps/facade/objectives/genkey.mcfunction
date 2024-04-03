execute as @e[type=minecraft:interaction,tag=objective_facade_genkey] run data merge entity @s {height:0}
execute as @e[type=minecraft:interaction,tag=objective_facade_genkey] run data remove entity @s interaction

execute as @e[type=text_display,tag=objective_facade_genkey] run data modify entity @s text set value "{'text':''}"

scoreboard players add $Objective Statues.Data 1

execute as @a at @s run playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1.5

clear @a[nbt={SelectedItem:{tag:{Tags:["facade_genkey_item"]}}}]
