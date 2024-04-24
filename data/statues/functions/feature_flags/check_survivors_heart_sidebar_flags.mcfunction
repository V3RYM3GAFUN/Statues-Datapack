execute if score survivors_heart_sidebar Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Survivors Heart Sidebar specific feature when the feature is disabled."}
return fail