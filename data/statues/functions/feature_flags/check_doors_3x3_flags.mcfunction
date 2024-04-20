execute if score doors_3x3 Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Doors 3x3 specific feature when the feature is disabled."}
execute if score doors_3x3 Statues.FeatureFlags matches 0 run return fail
return 1