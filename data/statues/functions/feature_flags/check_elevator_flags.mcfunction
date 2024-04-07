execute if score elevator Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use elevator specific feature when the feature is disabled."}
execute if score elevator Statues.FeatureFlags matches 0 run return fail
return 1