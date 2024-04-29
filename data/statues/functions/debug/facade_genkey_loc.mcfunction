tag @s add debug_caller
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_genkey] add facade_genkey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_genkey_devonly] add facade_genkey_pool
execute as @e[tag=facade_genkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_genkey_item:1b}}] run tag @s add facade_genkey_haskey
execute as @e[tag=facade_genkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_genkey_0"} run tag @s add facade_genkey_haskey
execute as @e[tag=facade_genkey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Generator key"}
tag @e[tag=facade_genkey_haskey] remove facade_genkey_haskey
tag @e[tag=facade_genkey_pool] remove facade_genkey_pool
tag @s remove debug_caller