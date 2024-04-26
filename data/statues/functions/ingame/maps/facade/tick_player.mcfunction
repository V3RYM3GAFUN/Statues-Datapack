data modify storage statues:map_tick inventory set from entity @s Inventory

execute if score $Objective Statues.DynamicData matches 0.. run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{tag:{item_objective_id:0}}].tag
execute if score $Objective Statues.DynamicData matches 3.. run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{tag:{item_objective_id:1}}].tag
execute if score $Objective Statues.DynamicData matches 3.. run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{tag:{item_objective_id:2}}].tag
execute if score $Objective Statues.DynamicData matches 3.. run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{tag:{item_objective_id:3}}].tag
execute if score $Objective Statues.DynamicData matches 7.. run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{tag:{item_objective_id:4}}].tag
execute if score $Objective Statues.DynamicData matches 7.. run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{tag:{item_objective_id:5}}].tag
execute if score $Objective Statues.DynamicData matches 7.. run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{tag:{item_objective_id:6}}].tag
execute if score $Objective Statues.DynamicData matches 9.. run function statues:ingame/maps/facade/on_collect_key with storage statues:map_tick inventory[{tag:{item_objective_id:7}}].tag

#> Generator key pick up detection
execute if score $Objective Statues.DynamicData matches 0 if data storage statues:map_tick {inventory:[{tag:{facade_genkey_item:1b}}]} run function statues:ingame/maps/facade/objectives/keypickup

#> Lab access keycard pick up detection
execute if score $Objective Statues.DynamicData matches 3 if data storage statues:map_tick {inventory:[{tag:{facade_labkey_item:1b}}]} run function statues:ingame/maps/facade/objectives/keypickup

#> High class keycard pick up detection
execute if score $Objective Statues.DynamicData matches 7 if data storage statues:map_tick {inventory:[{tag:{facade_highclass_item:1b}}]} run function statues:ingame/maps/facade/objectives/keypickup

#> Book pickup detection
execute if score $Objective Statues.DynamicData matches 9 if data storage statues:map_tick {inventory:[{tag:{facade_book_item:1b}}]} run function statues:ingame/maps/facade/objectives/bookpickup

#> Detect when a player brought the book back to the van
execute if score $Objective Statues.DynamicData matches 10.. at @e[tag=objective_facade_book] if entity @s[distance=..2.5] if data storage statues:map_tick {inventory:[{tag:{facade_book_item:1b}}]} run scoreboard players set $Objective Statues.DynamicData 11
