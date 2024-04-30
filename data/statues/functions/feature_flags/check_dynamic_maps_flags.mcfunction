execute if score dynamic_maps Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Dynamic Maps specific feature when the feature is disabled."}
return fail