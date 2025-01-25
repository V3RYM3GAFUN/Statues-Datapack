$data modify storage statues:data debug_tp.message set value "$(message)"
execute store result storage statues:data debug_tp.x int 1 run data get entity @s Pos[0]
execute store result storage statues:data debug_tp.y int 1 run data get entity @s Pos[1]
execute store result storage statues:data debug_tp.z int 1 run data get entity @s Pos[2]

function statues:debug/print_objective_location_macro with storage statues:data debug_tp
