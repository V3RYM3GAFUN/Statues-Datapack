execute if score abilities Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Abilities specific feature when the feature is disabled."}
return fail