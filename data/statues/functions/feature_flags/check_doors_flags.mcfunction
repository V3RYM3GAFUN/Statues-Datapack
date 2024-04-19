execute if score doors Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Doors specific feature when the feature is disabled."}
execute if score doors Statues.FeatureFlags matches 0 run return fail
return 1