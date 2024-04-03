
#> Clear Text Displays for "Main Power"
execute as @e[tag=objective_power] run data modify entity @s text set value "{text:''}"

#> Announce objective completion
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[powered=true] run title @a title ""
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[powered=true] run title @a subtitle {"text": "Main power restored!","color": "aqua"}

#> Detect objective buttons being triggered

execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=east,face=ceiling] run setblock ~ ~ ~ warped_button[facing=east,face=ceiling]
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=west,face=ceiling] run setblock ~ ~ ~ warped_button[facing=west,face=ceiling]
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=south,face=ceiling] run setblock ~ ~ ~ warped_button[facing=south,face=ceiling]
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=north,face=ceiling] run setblock ~ ~ ~ warped_button[facing=north,face=ceiling]

execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=east,face=floor] run setblock ~ ~ ~ warped_button[facing=east,face=floor]
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=west,face=floor] run setblock ~ ~ ~ warped_button[facing=west,face=floor]
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=south,face=floor] run setblock ~ ~ ~ warped_button[facing=south,face=floor]
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=north,face=floor] run setblock ~ ~ ~ warped_button[facing=north,face=floor]

execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=east,face=wall] run setblock ~ ~ ~ warped_button[facing=east,face=wall]
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=west,face=wall] run setblock ~ ~ ~ warped_button[facing=west,face=wall]
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=south,face=wall] run setblock ~ ~ ~ warped_button[facing=south,face=wall]
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[facing=north,face=wall] run setblock ~ ~ ~ warped_button[facing=north,face=wall]

scoreboard players add $Objective Statues.Data 1

function statues:ingame/mechanics/power_doors/open
function statues:ingame/mechanics/lights/lights_on