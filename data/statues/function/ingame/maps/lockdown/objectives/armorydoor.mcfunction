execute as @e[type=interaction,tag=lockdown_armory] run data merge entity @s {height:0}
execute as @e[type=interaction,tag=lockdown_armory] run tag @s add opened

execute as @e[type=text_display,tag=lockdown_armory] run data modify entity @s text set value "{\"text\":\"\"}"
execute as @e[type=text_display,tag=lockdown_armory] run data modify entity @s background set value 0

execute as @a[team=!Monster] at @s run playsound minecraft:block.vault.insert_item master @s ~ ~ ~ 1 1.5
