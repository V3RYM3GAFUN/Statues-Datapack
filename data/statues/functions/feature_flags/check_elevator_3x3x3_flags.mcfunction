execute if score elevator_3x3x3 Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Elevator 3x3x3 specific feature when the feature is disabled."}
return fail