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
execute if score $Objective Statues.Data matches 2 run data modify storage statues:data objective_text set value '{"text":"Objective 2","color":"aqua"}'

#> Generator room unlock
execute as @e[type=minecraft:interaction,tag=objective_facade_genkey] on target if data entity @s SelectedItem{tag:{Tags:["facade_genkey_item"]}} run tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has unlocked the door!","color":"aqua"}]
execute as @e[type=minecraft:interaction,tag=objective_facade_genkey] on target if data entity @s SelectedItem{tag:{Tags:["facade_genkey_item"]}} run function statues:ingame/maps/facade/objectives/genkey
execute as @e[type=minecraft:interaction,tag=objective_facade_genkey] run data remove entity @s interaction

#> Power on detection
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/main_power

# tag @e[tag=objective_triggered] remove objective_triggered