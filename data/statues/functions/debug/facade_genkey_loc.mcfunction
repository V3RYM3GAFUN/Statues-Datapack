tag @s add debug_caller
execute as @e[tag=facade_genkey,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_genkey_item:1b}}] run function statues:debug/print_objective_location {message:"Generator key"}
tag @s remove debug_caller