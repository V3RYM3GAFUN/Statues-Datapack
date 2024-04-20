execute if score dev_allow_empty_game Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Allow Empty Game specific feature when the feature is disabled."}
execute if score dev_allow_empty_game Statues.FeatureFlags matches 0 run return fail
return 1