execute if score class_preview Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Class Preview specific feature when the feature is disabled."}
return fail