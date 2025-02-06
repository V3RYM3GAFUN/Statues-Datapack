execute as @e[type=interaction,tag=facade_armory] run data merge entity @s {height:0}
execute as @e[type=interaction,tag=facade_armory] run tag @s add opened

execute as @e[type=text_display,tag=facade_armory] run data modify entity @s text set value "{\"text\":\"\"}"
execute as @e[type=text_display,tag=facade_armory] run data modify entity @s background set value 0

execute as @a[team=!Monster] at @s run playsound minecraft:block.vault.insert_item master @s ~ ~ ~ 1 1.5

clear @a iron_ingot[custom_data~{facade_armory_item:1b}] 1

fill -40 65 344 -40 63 346 air replace