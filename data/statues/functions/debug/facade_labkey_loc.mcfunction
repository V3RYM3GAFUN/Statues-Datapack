tag @s add debug_caller
function statues:ingame/maps/facade/pool_locations_load
execute as @e[tag=facade_labkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_labkey_item:1b}}] run tag @s add facade_labkey_haskey
execute as @e[tag=facade_labkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/_labkey_1"} run tag @s add facade_labkey_haskey
execute as @e[tag=facade_labkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/_labkey_2"} run tag @s add facade_labkey_haskey
execute as @e[tag=facade_labkey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/_labkey_3"} run tag @s add facade_labkey_haskey
execute as @e[tag=facade_labkey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Lab key"}
tag @e[tag=facade_labkey_pool] remove facade_labkey_pool
function statues:ingame/maps/facade/pool_locations_unload
tag @s remove debug_caller