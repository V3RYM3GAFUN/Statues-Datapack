execute if score dev_no_start_requirement Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use No Start Requirement specific feature when the feature is disabled."}
execute if score dev_no_start_requirement Statues.FeatureFlags matches 0 run return fail
return 1