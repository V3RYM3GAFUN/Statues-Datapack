tag @s add debug_caller
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_highclasskey] add facade_highclasskey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_highclasskey_devonly] add facade_highclasskey_pool
execute as @e[tag=facade_highclasskey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_highclass_item:1b}}] run tag @s add facade_highclasskey_haskey
execute as @e[tag=facade_highclasskey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_highclasskey_4"} run tag @s add facade_highclasskey_haskey
execute as @e[tag=facade_highclasskey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_highclasskey_5"} run tag @s add facade_highclasskey_haskey
execute as @e[tag=facade_highclasskey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_highclasskey_6"} run tag @s add facade_highclasskey_haskey
execute as @e[tag=facade_highclasskey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Lab key"}
tag @e[tag=facade_highclasskey_haskey] remove facade_highclasskey_haskey
tag @e[tag=facade_highclasskey_pool] remove facade_highclasskey_pool
tag @s remove debug_caller