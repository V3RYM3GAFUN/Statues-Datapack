execute if score sas Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use SAS Machines specific feature when the feature is disabled."}
return fail