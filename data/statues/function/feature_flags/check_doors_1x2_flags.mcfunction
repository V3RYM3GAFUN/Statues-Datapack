execute if score doors_1x2 Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Doors 1x2 specific feature when the feature is disabled."}
return fail