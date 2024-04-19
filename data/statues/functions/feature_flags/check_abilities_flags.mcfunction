execute if score abilities Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Abilities specific feature when the feature is disabled."}
execute if score abilities Statues.FeatureFlags matches 0 run return fail
return 1