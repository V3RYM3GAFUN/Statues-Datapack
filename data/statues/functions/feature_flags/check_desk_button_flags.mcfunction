execute if score desk_button Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Desk Button specific feature when the feature is disabled."}
return fail