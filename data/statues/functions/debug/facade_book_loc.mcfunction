tag @s add debug_caller
execute as @e[tag=facade_book,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_book_item:1b}}] run function statues:debug/print_objective_location {message:"Confidential book"}
tag @s remove debug_caller