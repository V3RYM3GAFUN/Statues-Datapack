execute if score dev_show_interactions Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Show Interactions specific feature when the feature is disabled."}
execute if score dev_show_interactions Statues.FeatureFlags matches 0 run return fail
return 1