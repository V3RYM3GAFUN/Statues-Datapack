tag @s add debug_caller
execute as @e[tag=facade_book,type=minecraft:marker] at @s unless block ~ ~ ~ minecraft:barrel{Items:[]} run function statues:debug/print_objective_location {message:"Confidential book"}
tag @s remove debug_caller