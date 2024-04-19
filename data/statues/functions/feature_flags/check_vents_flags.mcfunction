execute if score vents Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Vents specific feature when the feature is disabled."}
execute if score vents Statues.FeatureFlags matches 0 run return fail
return 1