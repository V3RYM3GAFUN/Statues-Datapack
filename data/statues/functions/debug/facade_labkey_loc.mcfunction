tag @s add debug_caller
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_labkey] add facade_labkey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_labkey_devonly] add facade_labkey_pool
execute as @e[tag=facade_labkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_labkey_item:1b}}] run tag @s add facade_labkey_haskey
execute as @e[tag=facade_labkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_labkey_1"} run tag @s add facade_labkey_haskey
execute as @e[tag=facade_labkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_labkey_2"} run tag @s add facade_labkey_haskey
execute as @e[tag=facade_labkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_labkey_3"} run tag @s add facade_labkey_haskey
execute as @e[tag=facade_labkey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Lab key"}
tag @e[tag=facade_labkey_haskey] remove facade_labkey_haskey
tag @e[tag=facade_labkey_pool] remove facade_labkey_pool
tag @s remove debug_caller