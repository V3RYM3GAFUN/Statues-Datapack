execute unless function statues:feature_flags/check_location_markers_flags run return fail
$execute store result score $LocationMarkerX Statues.TempData run data get storage statues:location_markers/$(source) "$(type)"[-$(index)].x
$execute store result score $LocationMarkerY Statues.TempData run data get storage statues:location_markers/$(source) "$(type)"[-$(index)].y
$execute store result score $LocationMarkerZ Statues.TempData run data get storage statues:location_markers/$(source) "$(type)"[-$(index)].z
scoreboard players operation $LocationMarkerX Statues.TempData += $LocationMarkersMoveX Statues.TempData
scoreboard players operation $LocationMarkerY Statues.TempData += $LocationMarkersMoveY Statues.TempData
scoreboard players operation $LocationMarkerZ Statues.TempData += $LocationMarkersMoveZ Statues.TempData
$execute store result storage statues:location_markers/$(source) "$(type)"[-$(index)].x int 1 run scoreboard players get $LocationMarkerX Statues.TempData
$execute store result storage statues:location_markers/$(source) "$(type)"[-$(index)].y int 1 run scoreboard players get $LocationMarkerY Statues.TempData
$execute store result storage statues:location_markers/$(source) "$(type)"[-$(index)].z int 1 run scoreboard players get $LocationMarkerZ Statues.TempData