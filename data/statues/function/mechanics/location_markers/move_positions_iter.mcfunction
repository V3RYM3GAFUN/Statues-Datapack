execute unless function statues:feature_flags/check_location_markers_flags run return fail
execute if score $LocationMarkersRemaining Statues.DynamicData matches ..0 run return fail
execute store result storage statues:temp macro_exec.index int 1 run scoreboard players get $LocationMarkersRemaining Statues.DynamicData
function statues:mechanics/location_markers/move_positions_iter_exec with storage statues:temp macro_exec
scoreboard players remove $LocationMarkersRemaining Statues.DynamicData 1
function statues:mechanics/location_markers/move_positions_iter