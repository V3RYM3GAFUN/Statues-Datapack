execute if score compass_tracker Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use compass_tracker specific feature when the feature is disabled."}
execute if score compass_tracker Statues.FeatureFlags matches 0 run return fail
return 1