execute if score elevator_buttons Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Elevator Buttons specific feature when the feature is disabled."}
return fail