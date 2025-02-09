tag @s add debug_caller
function statues:ingame/maps/common/pool_locations_load
execute as @e[tag=location_marker_ik_mapkey_generator,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{"components":{"minecraft:custom_data":{facade_genkey_item:1b}}}] run tag @s add map_genkey_haskey
execute as @e[tag=location_marker_ik_mapkey_generator,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/genkey_0"} run tag @s add map_genkey_haskey
execute as @e[tag=map_genkey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Generator key"}
function statues:ingame/maps/common/pool_locations_unload
tag @s remove debug_caller