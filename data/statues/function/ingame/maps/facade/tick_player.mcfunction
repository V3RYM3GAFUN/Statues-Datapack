data modify storage statues:map_tick inventory set from entity @s Inventory

tag @s[tag=!found_key_8,tag=!found_key_9,tag=!found_key_10,tag=!found_key_11,tag=!found_key_12] add not_found_key_armory_pre

execute if score $Objective Statues.DynamicData matches 0.. if entity @s[tag=!found_key_0] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:0b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 3.. if entity @s[tag=!found_key_1] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:1b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 3.. if entity @s[tag=!found_key_2] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:2b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 3.. if entity @s[tag=!found_key_3] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:3b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 7.. if entity @s[tag=!found_key_4] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:4b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 7.. if entity @s[tag=!found_key_5] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:5b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 7.. if entity @s[tag=!found_key_6] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:6b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 9.. if entity @s[tag=!found_key_7] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:7b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 6.. if entity @s[tag=!found_key_8] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:8b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 6.. if entity @s[tag=!found_key_9] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:9b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 6.. if entity @s[tag=!found_key_10] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:10b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 6.. if entity @s[tag=!found_key_11] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:11b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 6.. if entity @s[tag=!found_key_12] run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:12b}}}].components.minecraft:custom_data

#> Armory keycard pickup detection
tag @s[tag=!found_key_8,tag=!found_key_9,tag=!found_key_10,tag=!found_key_11,tag=!found_key_12] add not_found_key_armory_post
execute if entity @s[tag=not_found_key_armory_pre,tag=!not_found_key_armory_post] run function statues:ingame/maps/facade/objectives/armorypickup
tag @s remove not_found_key_armory_pre
tag @s remove not_found_key_armory_post

#> Generator key pick up detection
execute if score $Objective Statues.DynamicData matches 0 if entity @s[tag=found_key_0] run function statues:ingame/maps/facade/objectives/keypickup

#> Lab access keycard pick up detection
execute if score $Objective Statues.DynamicData matches 3 unless entity @s[tag=!found_key_1,tag=!found_key_2,tag=!found_key_3] run function statues:ingame/maps/facade/objectives/keypickup

#> High class keycard pick up detection
execute if score $Objective Statues.DynamicData matches 7 unless entity @s[tag=!found_key_4,tag=!found_key_5,tag=!found_key_6] run function statues:ingame/maps/facade/objectives/keypickup

#> Book pickup detection
execute if score $Objective Statues.DynamicData matches 9 if entity @s[tag=found_key_7] run function statues:ingame/maps/facade/objectives/bookpickup

#> Detect when a player brought the book back to the van
execute if score $Objective Statues.DynamicData matches 10.. at @e[tag=objective_facade_book] positioned ~-1 ~ ~-1 if entity @s[dx=2,dy=1,dz=2] if entity @s[tag=found_key_7] run scoreboard players set $Objective Statues.DynamicData 11