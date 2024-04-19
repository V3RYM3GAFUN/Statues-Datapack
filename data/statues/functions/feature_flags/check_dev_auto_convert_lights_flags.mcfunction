execute if score dev_auto_convert_lights Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Auto Convert Lights specific feature when the feature is disabled."}
execute if score dev_auto_convert_lights Statues.FeatureFlags matches 0 run return fail
return 1