execute if score dev_allow_empty_game Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Allow Empty Game specific feature when the feature is disabled."}
return fail