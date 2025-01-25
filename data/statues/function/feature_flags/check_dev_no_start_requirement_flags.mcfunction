execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use No Start Requirement specific feature when the feature is disabled."}
return fail