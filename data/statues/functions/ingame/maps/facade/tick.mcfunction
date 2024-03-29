execute as @a[tag=blinder] at @s run function statues:ingame/maps/facade/classes/trapper/abilities
execute as @a[tag=cloaker] at @s run function statues:ingame/maps/facade/classes/cloaker/abilities
execute as @a[tag=medic] at @s run function statues:ingame/maps/facade/classes/medic/abilities
execute as @a[tag=rusher] at @s run function statues:ingame/maps/facade/classes/rusher/abilities
execute as @a[tag=soldier] at @s run function statues:ingame/maps/facade/classes/soldier/abilities
execute as @a[tag=tank] at @s run function statues:ingame/maps/facade/classes/tank/abilities
execute as @a[tag=pusher] at @s run function statues:ingame/maps/facade/classes/pusher/abilities
execute as @a[tag=recon] at @s run function statues:ingame/maps/facade/classes/recon/abilities

#> Objective tracking

execute if score $Objective Statues.Data matches 0 run data modify storage statues:data objective_text set value '{"text":"Objective 1","color":"red"}'
execute if score $Objective Statues.Data matches 1 run data modify storage statues:data objective_text set value '{"text":"Objective 2","color":"green"}'

#> Objective completion test
#execute if block 45 -59 31 crimson_button[powered=true] run title @a title ""
#execute if block 45 -59 31 crimson_button[powered=true] run title @a subtitle {"text": "You did it!","color": "green"}
#execute if block 45 -59 31 crimson_button[powered=true] run setblock 45 -59 31 warped_button[facing=west]

execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[powered=true] run tag @e[tag=objective_power] add objective_triggered

execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=east,face=ceiling] run setblock ~ ~ ~ warped_button[facing=east,face=ceiling]
execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=west,face=ceiling] run setblock ~ ~ ~ warped_button[facing=west,face=ceiling]
execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=south,face=ceiling] run setblock ~ ~ ~ warped_button[facing=south,face=ceiling]
execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=north,face=ceiling] run setblock ~ ~ ~ warped_button[facing=north,face=ceiling]

execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=east,face=floor] run setblock ~ ~ ~ warped_button[facing=east,face=floor]
execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=west,face=floor] run setblock ~ ~ ~ warped_button[facing=west,face=floor]
execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=south,face=floor] run setblock ~ ~ ~ warped_button[facing=south,face=floor]
execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=north,face=floor] run setblock ~ ~ ~ warped_button[facing=north,face=floor]

execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=east,face=wall] run setblock ~ ~ ~ warped_button[facing=east,face=wall]
execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=west,face=wall] run setblock ~ ~ ~ warped_button[facing=west,face=wall]
execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=south,face=wall] run setblock ~ ~ ~ warped_button[facing=south,face=wall]
execute at @e[tag=objective_triggered] if block ~ ~ ~ crimson_button[facing=north,face=wall] run setblock ~ ~ ~ warped_button[facing=north,face=wall]

tag @e[tag=objective_triggered] remove objective_triggered