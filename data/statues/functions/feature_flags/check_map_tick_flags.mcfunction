execute if score map_tick Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Map Tick specific feature when the feature is disabled."}
return fail