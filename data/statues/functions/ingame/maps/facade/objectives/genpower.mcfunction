execute as @e[type=minecraft:interaction,tag=objective_facade_genpower] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_genpower] run data modify entity @s text set value "{'text':''}"

execute as @a[team=!Monster] at @s run playsound minecraft:ui.loom.take_result master @a ~ ~ ~ 1 0

fill -4 112 365 -3 113 365 air
fill 5 112 365 6 113 365 air

execute at @e[tag=objective_facade_genpower] if block ~ ~ ~ crimson_button[facing=east,face=wall] run setblock ~ ~ ~ warped_button[facing=east,face=wall]
execute at @e[tag=objective_facade_genpower] if block ~ ~ ~ crimson_button[facing=west,face=wall] run setblock ~ ~ ~ warped_button[facing=west,face=wall]
execute at @e[tag=objective_facade_genpower] if block ~ ~ ~ crimson_button[facing=south,face=wall] run setblock ~ ~ ~ warped_button[facing=south,face=wall]
execute at @e[tag=objective_facade_genpower] if block ~ ~ ~ crimson_button[facing=north,face=wall] run setblock ~ ~ ~ warped_button[facing=north,face=wall]

scoreboard players set $CompassSelector Statues.Data 3
scoreboard players set $Objective Statues.Data 3
