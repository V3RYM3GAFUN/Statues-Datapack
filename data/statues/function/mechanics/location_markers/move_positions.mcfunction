execute unless function statues:feature_flags/check_location_markers_flags run return fail
$execute store result score $IterationsRemaining Statues.TempData run data get storage statues:location_markers/$(source) $(type)
$scoreboard players set $LocationMarkersMoveX Statues.TempData $(x)
$scoreboard players set $LocationMarkersMoveY Statues.TempData $(y)
$scoreboard players set $LocationMarkersMoveZ Statues.TempData $(z)
$data modify storage statues:temp iter_exec set value {"source":"$(source)","type":"$(type)"}
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/location_markers/move_positions_iter with storage statues:temp iter_exec
