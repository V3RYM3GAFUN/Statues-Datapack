execute if score dev_show_markers Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Show Markers specific feature when the feature is disabled."}
execute if score dev_show_markers Statues.FeatureFlags matches 0 run return fail
return 1