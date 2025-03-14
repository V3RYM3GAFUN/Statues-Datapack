execute as @e[type=marker,tag=objective_lockdown_code,tag=big_door] at @s run fill ~ ~ ~ ~ ~5 ~10 air
execute as @e[type=marker,tag=objective_lockdown_code,tag=small_door] at @s run fill ~ ~ ~ ~12 ~2 ~ air

clear @a *[custom_data~{"lockdown_code_item":1b}]

execute as @e[type=text_display,tag=objective_lockdown_code] run data modify entity @s text set value '{"text":""}'

scoreboard players add $Objective Statues.DynamicData 1