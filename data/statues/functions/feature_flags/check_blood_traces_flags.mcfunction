execute if score blood_traces Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Blood Trails specific feature when the feature is disabled."}
return fail