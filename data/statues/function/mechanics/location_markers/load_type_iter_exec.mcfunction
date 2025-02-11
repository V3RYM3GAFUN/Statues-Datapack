execute unless function statues:feature_flags/check_location_markers_flags run return fail
$data modify storage statues:temp iter_exec_per set from storage statues:location_markers/$(source) $(type)[-$(index)]
$data merge storage statues:temp {iter_exec_per:{"source":"$(source)","type":"$(type)","identifier":"$(identifier)"}}
function statues:mechanics/location_markers/load_type_exec with storage statues:temp iter_exec_per
