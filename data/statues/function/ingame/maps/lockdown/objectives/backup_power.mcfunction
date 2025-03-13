# Allow 1x2 Doors to be opened
execute as @e[tag=objective_lockdown_backup_power,type=minecraft:marker] run tag @s add 1x2door

# Clear Text displays
execute as @e[tag=objective_lockdown_backup_power,type=text_display] run data merge entity @s {text:'{"text":""}'}

# Put interaction entities out of the way
execute as @e[type=interaction,tag=objective_lockdown_backup_power] run data modify entity @s height set value 0