tag @s add debug_caller
execute as @e[tag=facade_highclasskey,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_armory_item:1b}}] run function statues:debug/print_objective_location {message:"Armory key"}
tag @s remove debug_caller