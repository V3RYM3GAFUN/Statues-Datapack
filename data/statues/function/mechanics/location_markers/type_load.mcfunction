execute unless function statues:feature_flags/check_location_markers_flags run return fail
$data modify storage statues:temp macro_exec set value {source:"$(source)",type:"$(type)",identifier:"$(identifier)"}
$execute store result score $LocationMarkersRemaining Statues.DynamicData run data get storage statues:location_markers/$(source) "$(type)"
function statues:mechanics/location_markers/load_type_iter with storage statues:temp macro_exec
