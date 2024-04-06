execute as @e[type=minecraft:interaction,tag=objective_facade_override] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_override] run data modify entity @s text set value "{'text':''}"

scoreboard players set $Objective Statues.Data 6

execute as @a[team=!Monster] at @s run playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~ ~ 1 2

fill -4 105 378 -4 106 378 air
fill -4 105 383 -4 106 383 air

execute at @e[tag=objective_facade_override] if block ~ ~ ~ crimson_button[facing=east,face=wall] run setblock ~ ~ ~ warped_button[facing=east,face=wall]
execute at @e[tag=objective_facade_override] if block ~ ~ ~ crimson_button[facing=west,face=wall] run setblock ~ ~ ~ warped_button[facing=west,face=wall]
execute at @e[tag=objective_facade_override] if block ~ ~ ~ crimson_button[facing=south,face=wall] run setblock ~ ~ ~ warped_button[facing=south,face=wall]
execute at @e[tag=objective_facade_override] if block ~ ~ ~ crimson_button[facing=north,face=wall] run setblock ~ ~ ~ warped_button[facing=north,face=wall]
