execute as @e[type=interaction,tag=lockdown_armory] run tag @s add opened

execute as @e[type=text_display,tag=lockdown_armory] run data modify entity @s text set value '{"text":""}'
execute as @e[type=text_display,tag=lockdown_armory] run data modify entity @s background set value 0

execute as @a[team=!Monster] at @s run playsound minecraft:block.vault.insert_item master @s ~ ~ ~ 1 1.5

fill 67 58 7 67 60 9 air

# Remove the item
clear @a iron_ingot[custom_data~{lockdown_armory_item:1b}] 1