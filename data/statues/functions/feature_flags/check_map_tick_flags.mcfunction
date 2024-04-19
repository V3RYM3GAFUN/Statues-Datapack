execute if score map_tick Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Map Tick specific feature when the feature is disabled."}
execute if score map_tick Statues.FeatureFlags matches 0 run return fail
return 1