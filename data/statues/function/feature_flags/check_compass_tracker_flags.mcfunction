execute if score compass_tracker Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Compass Tracker specific feature when the feature is disabled."}
return fail