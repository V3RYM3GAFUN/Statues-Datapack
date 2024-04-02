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


#> Power on detection
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/main_power

# tag @e[tag=objective_triggered] remove objective_triggered