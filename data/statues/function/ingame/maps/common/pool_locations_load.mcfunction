execute unless score $IsDevGame Statues.DynamicData matches 1 run data modify storage statues:temp load_request set value {type:"keys",identifier:"mapkey"}
execute if score $IsDevGame Statues.DynamicData matches 1 unless score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run data modify storage statues:temp load_request set value {type:"keys",identifier:"mapkey"}
execute if score $IsDevGame Statues.DynamicData matches 1 if score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run data modify storage statues:temp load_request set value {type:"dev_keys",identifier:"mapkey"}
execute if score $Map Statues.DynamicData matches 0 run data modify storage statues:temp load_request.source set value "facade"
execute if score $Map Statues.DynamicData matches 1 run data modify storage statues:temp load_request.source set value "lockdown"
execute if score $Map Statues.DynamicData matches 2 run data modify storage statues:temp load_request.source set value "origins"
function statues:mechanics/location_markers/type_load with storage statues:temp load_request
