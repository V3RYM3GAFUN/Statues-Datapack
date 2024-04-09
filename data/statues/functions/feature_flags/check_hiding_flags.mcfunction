execute if score hiding Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use hiding specific feature when the feature is disabled."}
execute if score hiding Statues.FeatureFlags matches 0 run return fail
return 1