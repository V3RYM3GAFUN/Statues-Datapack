tag @s add debug_caller
function statues:ingame/maps/common/pool_locations_load
execute as @e[tag=location_marker_ik_mapkey_lab,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{"components":{"minecraft:custom_data":{facade_labkey_item:1b}}}] run tag @s add map_labkey_haskey
execute as @e[tag=location_marker_ik_mapkey_lab,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/labkey_1"} run tag @s add map_labkey_haskey
execute as @e[tag=location_marker_ik_mapkey_lab,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/labkey_2"} run tag @s add map_labkey_haskey
execute as @e[tag=location_marker_ik_mapkey_lab,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/labkey_3"} run tag @s add map_labkey_haskey
execute as @e[tag=map_labkey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Lab key"}
function statues:ingame/maps/common/pool_locations_unload
tag @s remove debug_caller