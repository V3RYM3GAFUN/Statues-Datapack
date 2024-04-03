execute if score floors Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use floors specific feature when the feature is disabled."}
execute if score floors Statues.FeatureFlags matches 0 run return fail
return 1