execute as @e[type=minecraft:interaction,tag=objective_facade_labkey] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_labkey] run data modify entity @s text set value "{'text':''}"

execute as @a[team=!Monster] at @s run playsound minecraft:block.vault.insert_item master @a ~ ~ ~ 1 1.5

clear @a iron_ingot{facade_labkey_item:1b} 1

time set 10000

scoreboard players set $Objective Statues.Data 5
scoreboard players set $CompassSelector Statues.Data 5