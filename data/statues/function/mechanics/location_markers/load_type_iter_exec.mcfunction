execute unless function statues:feature_flags/check_location_markers_flags run return fail
$data modify storage statues:temp macro_exec2 set from storage statues:location_markers/$(source) "$(type)"[-$(index)]
$data modify storage statues:temp macro_exec2.source set value "$(source)"
$data modify storage statues:temp macro_exec2.type set value "$(type)"
$data modify storage statues:temp macro_exec2.identifier set value "$(identifier)"
function statues:mechanics/location_markers/load_type_exec with storage statues:temp macro_exec2
