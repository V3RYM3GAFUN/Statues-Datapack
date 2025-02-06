tag @s add debug_caller
function statues:ingame/maps/facade/pool_locations_load
execute as @e[tag=facade_genkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{"components":{"custom_data":{facade_genkey_item:1b}}}] run tag @s add facade_genkey_haskey
execute as @e[tag=facade_genkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/genkey_0"} run tag @s add facade_genkey_haskey
execute as @e[tag=facade_genkey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Generator key"}
tag @e[tag=facade_genkey_haskey] remove facade_genkey_haskey
function statues:ingame/maps/facade/pool_locations_unload
tag @s remove debug_caller