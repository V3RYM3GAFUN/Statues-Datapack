execute unless function statues:feature_flags/check_map_tick_flags run return fail

execute if score abilities Statues.FeatureFlags matches 1 run function statues:ingame/maps/facade/ability_tick

#> Objective tracking
execute if score $Objective Statues.DynamicData matches 0 run data modify storage statues:data objective_text set value '{"text":"Find backup generator key in office area","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 0 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.DynamicData matches 1 run data modify storage statues:data objective_text set value '{"text":"Unlock backup generator room","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 1 run data modify storage statues:data objective_floor set value 0
execute if score $Objective Statues.DynamicData matches 2 run data modify storage statues:data objective_text set value '{"text":"Turn on the generator","color":"gold"}'
execute if score $Objective Statues.DynamicData matches 2 run data modify storage statues:data objective_floor set value 0
execute if score $Objective Statues.DynamicData matches 3 run data modify storage statues:data objective_text set value '{"text":"Find lab access keycard in Archive room","color":"green"}'
execute if score $Objective Statues.DynamicData matches 3 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.DynamicData matches 4 run data modify storage statues:data objective_text set value '{"text":"Unlock lab access doors","color":"white"}'
execute if score $Objective Statues.DynamicData matches 4 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.DynamicData matches 5 run data modify storage statues:data objective_text set value '{"text":"Press emergency override button","color":"red"}'
execute if score $Objective Statues.DynamicData matches 5 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.DynamicData matches 6 run data modify storage statues:data objective_text set value '{"text":"Head down the labs and turn on the main power","color":"yellow"}'
execute if score $Objective Statues.DynamicData matches 6 run data modify storage statues:data objective_floor set value -4
execute if score $Objective Statues.DynamicData matches 7 run data modify storage statues:data objective_text set value '{"text":"Search underground for keycard","color":"white"}'
execute if score $Objective Statues.DynamicData matches 7 run data modify storage statues:data objective_floor set value -3
execute if score $Objective Statues.DynamicData matches 8 run data modify storage statues:data objective_text set value '{"text":"Unlock high class offices","color":"white"}'
execute if score $Objective Statues.DynamicData matches 8 run data modify storage statues:data objective_floor set value 1
execute if score $Objective Statues.DynamicData matches 9 run data modify storage statues:data objective_text set value '{"text":"Find the confidential book and escape!","color":"red","bold":true}'
execute if score $Objective Statues.DynamicData matches 9 run data modify storage statues:data objective_floor set value 1

#> Generator power detection
execute if score $Objective Statues.DynamicData matches 2 at @e[tag=objective_facade_genpower,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/genpower

#> Emergency override button press
execute if score $Objective Statues.DynamicData matches 5 at @e[tag=objective_facade_override,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/override

#> Power on detection
execute if score $Objective Statues.DynamicData matches 6 at @e[tag=objective_facade_power,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/main_power
execute if score $Objective Statues.DynamicData matches 7.. run scoreboard players remove $Core.Ticks Statues.DynamicData 1
execute if score $Core.Ticks Statues.DynamicData matches 0 run playsound minecraft:entity.warden.nearby_closer master @a -4 83 322 5 0
execute if score $Core.Ticks Statues.DynamicData matches ..0 run scoreboard players set $Core.Ticks Statues.DynamicData 120

execute as @a unless entity @s[team=!Monster,team=!Survivor] run function statues:ingame/maps/facade/tick_player

execute if score $Objective Statues.DynamicData matches 11 as @e[tag=objective_facade_book] at @s run function statues:ingame/maps/facade/objectives/escape

#> Force monsters who haven't chosen a monster to spawn with a random choice
# Was too lazy to add a general "No monster" tag
execute if score $MonsterSpawnDelay Statues.DynamicData matches 5 as @e[type=marker,tag=facade_monster_choice,sort=random,limit=1] at @s if block ~ ~ ~ light_weighted_pressure_plate run tp @r[team=Monster,tag=!monster_chosen] ~ ~ ~

#> Countdown for monster spawn delay (before they can actually chase survivors)
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0.. run scoreboard players remove $MonsterSpawnDelay Statues.DynamicData 1
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0 run function statues:ingame/maps/facade/monsterspawn


execute as @a[team=Monster] if score @s Statues.Barrels matches 1.. run function statues:ingame/maps/facade/monster_anti_barrel