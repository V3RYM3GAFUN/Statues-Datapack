tag @s add debug_caller
function statues:ingame/maps/common/pool_locations_load
execute as @e[tag=location_marker_ik_mapkey_book,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{"components":{"custom_data":{facade_book_item:1b}}}] run tag @s add map_book_haskey
execute as @e[tag=location_marker_ik_mapkey_book,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/book_7"} run tag @s add map_book_haskey
execute as @e[tag=map_book_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Confidential book"}
function statues:ingame/maps/common/pool_locations_unload
tag @s remove debug_caller