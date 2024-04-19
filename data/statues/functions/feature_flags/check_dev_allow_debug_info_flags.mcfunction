execute if score dev_allow_debug_info Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Allow Debug Info specific feature when the feature is disabled."}
execute if score dev_allow_debug_info Statues.FeatureFlags matches 0 run return fail
return 1