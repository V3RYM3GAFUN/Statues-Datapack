tag @s add debug_caller
execute as @e[tag=facade_highclasskey,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_highclass_item:1b}}] run function statues:debug/print_objective_location {message:"High class key"}
tag @s remove debug_caller