execute if score desk_button Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Desk Button specific feature when the feature is disabled."}
execute if score desk_button Statues.FeatureFlags matches 0 run return fail
return 1