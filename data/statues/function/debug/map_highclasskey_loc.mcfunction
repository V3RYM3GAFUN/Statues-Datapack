tag @s add debug_caller
function statues:ingame/maps/common/pool_locations_load
execute as @e[tag=location_marker_ik_mapkey_high_class,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{"component":{"custom_data":{facade_highclass_item:1b}}}] run tag @s add map_highclasskey_haskey
execute as @e[tag=location_marker_ik_mapkey_high_class,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/highclasskey_4"} run tag @s add map_highclasskey_haskey
execute as @e[tag=location_marker_ik_mapkey_high_class,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/highclasskey_5"} run tag @s add map_highclasskey_haskey
execute as @e[tag=location_marker_ik_mapkey_high_class,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/highclasskey_6"} run tag @s add map_highclasskey_haskey
execute as @e[tag=map_highclasskey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Lab key"}
function statues:ingame/maps/common/pool_locations_unload
tag @s remove debug_caller