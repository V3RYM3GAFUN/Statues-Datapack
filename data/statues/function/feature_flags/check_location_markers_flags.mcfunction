execute if score location_markers Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Location Markers specific feature when the feature is disabled."}
return fail