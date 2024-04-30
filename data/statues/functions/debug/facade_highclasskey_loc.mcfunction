tag @s add debug_caller
function statues:ingame/maps/facade/pool_locations_load
execute as @e[tag=facade_highclasskey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ Items[{tag:{facade_highclass_item:1b}}] run tag @s add facade_highclasskey_haskey
execute as @e[tag=facade_highclasskey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/highclasskey_4"} run tag @s add facade_highclasskey_haskey
execute as @e[tag=facade_highclasskey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/highclasskey_5"} run tag @s add facade_highclasskey_haskey
execute as @e[tag=facade_highclasskey_pool,type=minecraft:marker] at @s if data block ~ ~ ~ {LootTable:"statues:items/facade/objectives/highclasskey_6"} run tag @s add facade_highclasskey_haskey
execute as @e[tag=facade_highclasskey_haskey,type=minecraft:marker] at @s run function statues:debug/print_objective_location {message:"Lab key"}
tag @e[tag=facade_highclasskey_haskey] remove facade_highclasskey_haskey
function statues:ingame/maps/facade/pool_locations_unload
tag @s remove debug_caller