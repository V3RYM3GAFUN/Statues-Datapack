execute if score elevator_2x3x2 Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Elevator 2x3x2 specific feature when the feature is disabled."}
return fail