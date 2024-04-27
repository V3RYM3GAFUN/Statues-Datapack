tag @s add debug_caller
execute as @e[tag=facade_labkey,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_labkey_item:1b}}]run function statues:debug/print_objective_location {message:"Lab key"}
tag @s remove debug_caller