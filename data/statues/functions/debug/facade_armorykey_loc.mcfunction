tag @s add debug_caller
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_highclasskey] add facade_armorykey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_armorykey_devonly] add facade_armorykey_pool
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_armory_item:1b}}] run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_8"} run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_9"} run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_10"} run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_11"} run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_12"} run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Armory key"}
tag @e[tag=facade_armorykey_haskey] remove facade_armorykey_haskey
tag @e[tag=facade_armorykey_pool] remove facade_armorykey_pool
tag @s remove debug_caller