tag @s add debug_caller
execute as @e[tag=facade_genkey,type=minecraft:marker] at @s unless block ~ ~ ~ minecraft:barrel{Items:[]} run function statues:debug/print_objective_location {message:"Generator key"}
tag @s remove debug_caller