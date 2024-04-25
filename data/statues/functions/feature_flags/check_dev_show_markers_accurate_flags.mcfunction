execute if score dev_show_markers_accurate Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Show Markers (Accurate) specific feature when the feature is disabled."}
return fail