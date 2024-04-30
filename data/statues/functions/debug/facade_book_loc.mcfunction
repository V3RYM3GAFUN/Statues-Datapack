tag @s add debug_caller
function statues:ingame/maps/facade/pool_locations_load
execute as @e[tag=facade_book_pool,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_book_item:1b}}] run tag @s add facade_book_haskey
execute as @e[tag=facade_book_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/_book_7"} run tag @s add facade_book_haskey
execute as @e[tag=facade_book_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Confidential book"}
tag @e[tag=facade_book_haskey] remove facade_book_haskey
function statues:ingame/maps/facade/pool_locations_unload
tag @s remove debug_caller