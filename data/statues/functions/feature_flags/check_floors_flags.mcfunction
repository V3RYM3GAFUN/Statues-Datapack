execute if score floors Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Floors specific feature when the feature is disabled."}
return fail