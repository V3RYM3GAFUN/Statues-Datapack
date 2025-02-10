execute unless function statues:feature_flags/check_location_markers_flags run return fail
$scoreboard players set $LocationMarkersMoveX Statues.TempData $(x)
$scoreboard players set $LocationMarkersMoveY Statues.TempData $(y)
$scoreboard players set $LocationMarkersMoveZ Statues.TempData $(z)
$data modify storage statues:temp macro_exec set value {source:"$(source)",type:"$(type)"}
$execute store result score $LocationMarkersRemaining Statues.DynamicData run data get storage statues:location_markers/$(source) "$(type)"
function statues:mechanics/location_markers/move_positions_iter with storage statues:temp macro_exec
