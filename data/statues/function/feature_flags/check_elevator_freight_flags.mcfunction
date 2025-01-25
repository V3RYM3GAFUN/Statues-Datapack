execute if score elevator_freight Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Elevator Freight specific feature when the feature is disabled."}
return fail