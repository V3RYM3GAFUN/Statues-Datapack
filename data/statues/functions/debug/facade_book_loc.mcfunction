tag @s add debug_caller
execute as @e[tag=facade_book,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_book_item:1b}}] run function statues:debug/print_objective_location {message:"Confidential book"}
tag @s remove debug_caller

tag @s add debug_caller
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_book] add facade_book_pool
execute if score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_book_devonly] add facade_book_pool
execute as @e[tag=facade_book_pool,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_book_item:1b}}] run tag @s add facade_book_haskey
execute as @e[tag=facade_book_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_book_7"} run tag @s add facade_book_haskey
execute as @e[tag=facade_book_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Confidential book"}
tag @e[tag=facade_book_haskey] remove facade_book_haskey
tag @e[tag=facade_book_pool] remove facade_book_pool
tag @s remove debug_caller