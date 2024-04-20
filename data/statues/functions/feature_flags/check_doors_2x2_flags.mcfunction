execute if score doors_2x2 Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Doors 2x2 specific feature when the feature is disabled."}
execute if score doors_2x2 Statues.FeatureFlags matches 0 run return fail
return 1