execute if score lights Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Lights specific feature when the feature is disabled."}
return fail