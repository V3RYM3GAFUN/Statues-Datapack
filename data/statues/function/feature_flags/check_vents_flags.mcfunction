execute if score vents Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Vents specific feature when the feature is disabled."}
return fail