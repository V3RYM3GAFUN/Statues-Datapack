execute unless function statues:feature_flags/check_location_markers_flags run return fail
$data modify storage statues:temp marker_location_add set value {kind:"$(kind)"}
execute store result storage statues:temp marker_location_add.x int 1 run data get entity @s Pos[0]
execute store result storage statues:temp marker_location_add.y int 1 run data get entity @s Pos[1]
execute store result storage statues:temp marker_location_add.z int 1 run data get entity @s Pos[2]
$data modify storage statues:location_markers/$(source) "$(type)" append from storage statues:temp marker_location_add