execute unless function statues:feature_flags/check_location_markers_flags run return fail
$execute store result score $IterationsRemaining Statues.TempData run data get storage statues:location_markers/$(source) $(type)

$data modify storage statues:temp iter_exec set value {"source":"$(source)","type":"$(type)","identifier":"$(identifier)"}
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/location_markers/load_type_iter with storage statues:temp iter_exec
