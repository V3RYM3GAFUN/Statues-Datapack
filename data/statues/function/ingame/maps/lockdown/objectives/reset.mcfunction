#> Load the map
execute in statues:maps/lockdown run forceload add 95 79 -112 -80

# Fuel Inputs
execute as @e[tag=objective_lockdown_fuel,type=interaction] run data modify entity @s height set value 1
execute as @e[tag=objective_lockdown_fuel,type=text_display] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.fuel","color":"red"}',shadow:true,background:0}

# Backup Power Doors
execute as @e[tag=objective_lockdown_backup_power,type=minecraft:marker] at @s run function statues:mechanics/doors_1x2/close
execute as @e[tag=objective_lockdown_backup_power,type=minecraft:marker] run tag @s remove 1x2door

execute as @e[tag=objective_lockdown_backup_power,type=text_display] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.backuppower","color":"red"}',shadow:true,background:0}

execute as @e[type=interaction,tag=objective_lockdown_backup_power] run data modify entity @s height set value 2

# Override Doors
execute as @e[tag=machine_sas,tag=sas_1x2,type=marker] at @s positioned ~-3 ~-1 ~ as @e[dx=6,dy=1,dz=0,type=marker,tag=machine_sas_doordz] at @s run function statues:mechanics/sas/dz/1x2/close

execute as @e[tag=objective_lockdown_override,type=text_display] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.override","color":"red"}',shadow:true,background:0}

# Keycard 1 Doors
execute as @e[tag=objective_lockdown_keycard1,type=text_display] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.keycard1","color":"red"}',shadow:true,background:0}

execute as @e[type=interaction,tag=objective_lockdown_keycard1] run data modify entity @s height set value 2

execute as @e[tag=objective_lockdown_keycard1,type=marker] at @s run function statues:mechanics/doors_1x2/close
execute as @e[tag=objective_lockdown_keycard1,type=marker] run tag @s remove 1x2door

# Power Doors
execute as @e[tag=objective_lockdown_power] run data modify entity @s text set value "{\"translate\":\"statues.text.lockdown.objective.mainpower\",\"color\":\"red\"}"
function statues:mechanics/power_doors/close

# Keycard 2 Doors
execute as @e[tag=objective_lockdown_keycard2,type=text_display] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.keycard2","color":"red"}',shadow:true,background:0}

execute as @e[tag=objective_lockdown_keycard2,type=minecraft:marker] at @s run function statues:mechanics/doors_1x2/close
execute as @e[tag=objective_lockdown_keycard2,type=marker] run tag @s remove 1x2door

# Lift-off doors
execute as @e[tag=objective_lockdown_code,type=text_display] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.code","color":"red"}',shadow:true,background:0}

execute as @e[tag=objective_lockdown_code,type=text_display,tag=door] run data merge entity @s {text:'{"translate":"statues.text.lockdown.objective.liftoff","color":"red"}',shadow:true,background:0}

execute as @e[type=marker,tag=objective_lockdown_code,tag=big_door] at @s run fill ~ ~ ~ ~ ~5 ~10 minecraft:andesite
execute as @e[type=marker,tag=objective_lockdown_code,tag=small_door] at @s run fill ~ ~ ~ ~12 ~2 ~ minecraft:andesite

data modify entity @n[tag=monster_text,type=text_display] text set value '{"translate":"statues.text.monster.spawn","color":"red","bold":true}'

# Armory
execute as @e[tag=lockdown_armory,type=text_display] run data modify entity @s text set value '{"translate":"statues.text.lockdown.objective.armorykey","color":"red"}'
execute as @e[tag=lockdown_armory,type=interaction] run tag @s remove opened
clone 67 55 9 67 53 7 67 58 7

#> Unload the map
forceload remove 95 79 -112 -80