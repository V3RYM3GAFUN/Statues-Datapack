execute as @a[tag=trapper] at @s run function statues:ingame/maps/facade/classes/trapper/abilities
execute as @a[tag=cloaker] at @s run function statues:ingame/maps/facade/classes/cloaker/abilities
execute as @a[tag=medic] at @s run function statues:ingame/maps/facade/classes/medic/abilities
execute as @a[tag=runner] at @s run function statues:ingame/maps/facade/classes/runner/abilities
execute as @a[tag=gunner] at @s run function statues:ingame/maps/facade/classes/gunner/abilities
execute as @a[tag=juggernaut] at @s run function statues:ingame/maps/facade/classes/juggernaut/abilities
execute as @a[tag=brawler] at @s run function statues:ingame/maps/facade/classes/brawler/abilities
execute as @a[tag=marksman] at @s run function statues:ingame/maps/facade/classes/marksman/abilities
execute as @a[tag=shotgunner] at @s run function statues:ingame/maps/facade/classes/shotgunner/abilities

#> Objective tracking
execute if score $Objective Statues.Data matches 0 run data modify storage statues:data objective_text set value '{"text":"Find backup generator key in office area","color":"aqua"}'
execute if score $Objective Statues.Data matches 0 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.Data matches 1 run data modify storage statues:data objective_text set value '{"text":"Unlock backup generator room","color":"aqua"}'
execute if score $Objective Statues.Data matches 1 run data modify storage statues:data objective_floor set value 0
execute if score $Objective Statues.Data matches 2 run data modify storage statues:data objective_text set value '{"text":"Turn on the generator","color":"gold"}'
execute if score $Objective Statues.Data matches 2 run data modify storage statues:data objective_floor set value 0
execute if score $Objective Statues.Data matches 3 run data modify storage statues:data objective_text set value '{"text":"Find lab access keycard in Archive room","color":"green"}'
execute if score $Objective Statues.Data matches 3 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.Data matches 4 run data modify storage statues:data objective_text set value '{"text":"Unlock lab access doors","color":"white"}'
execute if score $Objective Statues.Data matches 4 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.Data matches 5 run data modify storage statues:data objective_text set value '{"text":"Press emergency override button","color":"red"}'
execute if score $Objective Statues.Data matches 5 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.Data matches 6 run data modify storage statues:data objective_text set value '{"text":"Head down the labs and turn on the main power","color":"yellow"}'
execute if score $Objective Statues.Data matches 6 run data modify storage statues:data objective_floor set value -4
execute if score $Objective Statues.Data matches 7 run data modify storage statues:data objective_text set value '{"text":"Search underground for keycard","color":"white"}'
execute if score $Objective Statues.Data matches 7 run data modify storage statues:data objective_floor set value -3
execute if score $Objective Statues.Data matches 8 run data modify storage statues:data objective_text set value '{"text":"Unlock high class offices","color":"white"}'
execute if score $Objective Statues.Data matches 8 run data modify storage statues:data objective_floor set value 1
execute if score $Objective Statues.Data matches 9 run data modify storage statues:data objective_text set value '{"text":"Find the confidential book and escape!","color":"red","bold":true}'
execute if score $Objective Statues.Data matches 9 run data modify storage statues:data objective_floor set value 1

#> Generator key pick up detection
execute as @a[nbt={Inventory:[{tag:{facade_genkey_item:1b}}]}] if score $Objective Statues.Data matches 0 run function statues:ingame/maps/facade/objectives/keypickup
execute as @a[nbt={Inventory:[{tag:{facade_genkey_item:1b}}]}] if score $Objective Statues.Data matches 0 run scoreboard players set $Objective Statues.Data 1

#> Generator power detection
execute at @e[tag=objective_facade_genpower,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/genpower

#> Lab access keycard pick up detection
execute as @a[nbt={Inventory:[{tag:{facade_labkey_item:1b}}]}] if score $Objective Statues.Data matches 3 run function statues:ingame/maps/facade/objectives/keypickup
execute as @a[nbt={Inventory:[{tag:{facade_labkey_item:1b}}]}] if score $Objective Statues.Data matches 3 run scoreboard players set $Objective Statues.Data 4

#> Emergency override button press
execute at @e[tag=objective_facade_override,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/override

#> Power on detection
execute at @e[tag=objective_facade_power,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/main_power
execute if score $Objective Statues.Data matches 7.. run scoreboard players remove $Core.Ticks Statues.Data 1
execute if score $Core.Ticks Statues.Data matches 0 run playsound minecraft:entity.warden.nearby_closer master @a -4 83 322 5 0
execute if score $Core.Ticks Statues.Data matches ..0 run scoreboard players set $Core.Ticks Statues.Data 120

#> High class keycard pick up detection
execute as @a[nbt={Inventory:[{tag:{facade_highclass_item:1b}}]}] if score $Objective Statues.Data matches 7 run function statues:ingame/maps/facade/objectives/keypickup
execute as @a[nbt={Inventory:[{tag:{facade_highclass_item:1b}}]}] if score $Objective Statues.Data matches 7 run scoreboard players set $Objective Statues.Data 8

#> Book pickup detection
execute as @a[nbt={Inventory:[{tag:{facade_book_item:1b}}]}] if score $Objective Statues.Data matches 9 run function statues:ingame/maps/facade/objectives/bookpickup
execute as @a[nbt={Inventory:[{tag:{facade_book_item:1b}}]}] if score $Objective Statues.Data matches 9 run scoreboard players set $Objective Statues.Data 10

#> Detect when a player brought the book back to the van
execute as @e[tag=objective_facade_book] at @s if entity @a[nbt={Inventory:[{tag:{facade_book_item:1b}}]},distance=..2] run scoreboard players set $Objective Statues.Data 11
execute if score $Objective Statues.Data matches 11 as @a[tag=objective_facade_book] run function statues:ingame/maps/facade/objectives/escape 


#> Force monsters who haven't chosen a monster to spawn with a random choice
# Was too lazy to add a general "No monster" tag
execute if score $MonsterSpawnDelay Statues.Data matches 5 as @e[type=marker,tag=facade_monster_choice,sort=random,limit=1] at @s if block ~ ~ ~ light_weighted_pressure_plate run tp @r[team=Monster,tag=!monster_chosen] ~ ~ ~

#> Countdown for monster spawn delay (before they can actually chase survivors)
execute if score $MonsterSpawnDelay Statues.Data matches 0.. run scoreboard players remove $MonsterSpawnDelay Statues.Data 1
execute if score $MonsterSpawnDelay Statues.Data matches 0 run function statues:ingame/maps/facade/monsterspawn

