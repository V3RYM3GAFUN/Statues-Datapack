execute if score sas Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use SAS Machines specific feature when the feature is disabled."}
execute if score sas Statues.FeatureFlags matches 0 run return fail
return 1