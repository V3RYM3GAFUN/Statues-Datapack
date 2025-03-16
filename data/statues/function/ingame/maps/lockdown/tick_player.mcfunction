data modify storage statues:map_tick inventory set from entity @s Inventory

tag @s[tag=!found_key_14,tag=!found_key_15,tag=!found_key_16,tag=!found_key_17,tag=!found_key_18] add not_found_key_armory_pre

execute if score $Objective Statues.DynamicData matches 0.. if entity @s[tag=!found_key_0] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:0b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 0.. if entity @s[tag=!found_key_1] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:1b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 0.. if entity @s[tag=!found_key_2] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:2b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 0.. if entity @s[tag=!found_key_3] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:3b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 0.. if entity @s[tag=!found_key_4] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:4b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 0.. if entity @s[tag=!found_key_5] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:5b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 6.. if entity @s[tag=!found_key_6] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:6b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 6.. if entity @s[tag=!found_key_7] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:7b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 6.. if entity @s[tag=!found_key_8] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:8b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 9.. if entity @s[tag=!found_key_9] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:9b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 9.. if entity @s[tag=!found_key_10] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:10b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 12.. if entity @s[tag=!found_key_11] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:11b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 12.. if entity @s[tag=!found_key_12] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:12b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 12.. if entity @s[tag=!found_key_13] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:13b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 10.. if entity @s[tag=!found_key_14] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:14b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 10.. if entity @s[tag=!found_key_15] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:15b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 10.. if entity @s[tag=!found_key_16] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:16b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 10.. if entity @s[tag=!found_key_17] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:17b}}}].components.minecraft:custom_data
execute if score $Objective Statues.DynamicData matches 10.. if entity @s[tag=!found_key_18] run function statues:ingame/maps/lockdown/on_collect_key with storage statues:map_tick inventory[{components:{"minecraft:custom_data":{item_objective_id:18b}}}].components.minecraft:custom_data

#> Armory keycard pickup detection
tag @s[tag=!found_key_14,tag=!found_key_15,tag=!found_key_16,tag=!found_key_17,tag=!found_key_18] add not_found_key_armory_post
execute if entity @s[tag=not_found_key_armory_pre,tag=!not_found_key_armory_post] run function statues:ingame/maps/lockdown/objectives/armorypickup
tag @s remove not_found_key_armory_pre
tag @s remove not_found_key_armory_post

#> Fuel pick up detection
execute if entity @s[tag=!found_key_0] run function statues:ingame/maps/lockdown/objectives/fuel_found
execute if entity @s[tag=!found_key_1] run function statues:ingame/maps/lockdown/objectives/fuel_found
execute if entity @s[tag=!found_key_2] run function statues:ingame/maps/lockdown/objectives/fuel_found
execute if entity @s[tag=!found_key_3] run function statues:ingame/maps/lockdown/objectives/fuel_found
execute if entity @s[tag=!found_key_4] run function statues:ingame/maps/lockdown/objectives/fuel_found
execute if entity @s[tag=!found_key_5] run function statues:ingame/maps/lockdown/objectives/fuel_found

#> Keycard 1 pick up detection
execute if score $Objective Statues.DynamicData matches 6 unless entity @s[tag=!found_key_6,tag=!found_key_7,tag=!found_key_8] run function statues:ingame/maps/lockdown/objectives/keycard_pickup

#> Keycard 2 pick up detection
execute if score $Objective Statues.DynamicData matches 10 unless entity @s[tag=!found_key_9,tag=!found_key_10] run function statues:ingame/maps/lockdown/objectives/keycard_pickup

#> Code pick up detection
execute if score $Objective Statues.DynamicData matches 12 unless entity @s[tag=!found_key_11,tag=!found_key_12,tag=!found_key_13] run function statues:ingame/maps/lockdown/objectives/code_pickup