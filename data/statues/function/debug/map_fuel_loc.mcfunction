tag @s add debug_caller
function statues:ingame/maps/common/pool_locations_load
execute as @e[tag=location_marker_ik_mapkey_armory,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_armory_item:1b}}] run tag @s add map_armorykey_haskey
execute as @e[tag=location_marker_ik_mapkey_armory,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/armorykey_8"} run tag @s add map_armorykey_haskey
execute as @e[tag=location_marker_ik_mapkey_armory,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/armorykey_9"} run tag @s add map_armorykey_haskey
execute as @e[tag=location_marker_ik_mapkey_armory,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/armorykey_10"} run tag @s add map_armorykey_haskey
execute as @e[tag=location_marker_ik_mapkey_armory,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/armorykey_11"} run tag @s add map_armorykey_haskey
execute as @e[tag=location_marker_ik_mapkey_armory,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/armorykey_12"} run tag @s add map_armorykey_haskey
execute as @e[tag=map_armorykey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Armory key"}
function statues:ingame/maps/common/pool_locations_unload
tag @s remove debug_caller