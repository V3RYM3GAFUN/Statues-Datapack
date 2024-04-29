tag @s add debug_caller
function statues:ingame/maps/facade/pool_locations_load
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_armory_item:1b}}] run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_8"} run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_9"} run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_10"} run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_11"} run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_12"} run tag @s add facade_armorykey_haskey
execute as @e[tag=facade_armorykey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Armory key"}
function statues:ingame/maps/facade/pool_locations_unload
tag @s remove debug_caller