execute if score dev_show_markers Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Show Markers (Block Aligned) specific feature when the feature is disabled."}
return fail