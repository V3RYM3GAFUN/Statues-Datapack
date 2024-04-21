execute if score dev_allow_debug_info Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Allow Debug Info specific feature when the feature is disabled."}
return fail