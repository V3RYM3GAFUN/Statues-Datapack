execute if score dev_auto_convert_lights Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Auto Convert Lights specific feature when the feature is disabled."}
return fail