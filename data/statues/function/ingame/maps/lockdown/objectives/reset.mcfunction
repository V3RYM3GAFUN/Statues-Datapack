
# Backup Power Doors
execute as @e[tag=objective_lockdown_backup_power,type=minecraft:marker] at @s run function statues:mechanics/doors_1x2/close
execute as @e[tag=objective_lockdown_backup_power,type=minecraft:marker] run tag @s remove 1x2door

execute as @e[tag=objective_lockdown_backup_power,type=text_display] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.backuppower","color":"red"}'}

execute as @e[type=interaction,tag=objective_lockdown_backup_power] run data modify entity @s height set value 2

# Override Doors
execute as @e[tag=machine_sas,tag=sas_1x2,type=marker] at @s positioned ~-3 ~-1 ~ as @e[dx=6,dy=1,dz=0,type=marker,tag=machine_sas_doordz] at @s run function statues:mechanics/sas/dz/1x2/close

execute as @e[tag=,type=text_display] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.override","color":"red"}'}

# Keycard 1 Doors
execute as @e[tag=,type=text_display] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.keycard1","color":"red"}'}

execute as @e[type=interaction,tag=objective_lockdown_keycard1] run data modify entity @s height set value 2


# Keycard 2 Doors
execute as @e[tag=,type=text_display] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.keycard2","color":"red"}'}

execute as @e[tag=objective_lockdown_keycard2,type=minecraft:marker] at @s run function statues:mechanics/doors_1x2/close
execute as @e[tag=objective_lockdown_keycard2,type=marker] run tag @s remove 1x2door

execute as @e[type=interaction,tag=objective_lockdown_keycard2] run data modify entity @s height set value 2