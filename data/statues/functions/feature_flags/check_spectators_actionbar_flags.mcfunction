execute if score spectators_actionbar Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Spectators ActionBar specific feature when the feature is disabled."}
return fail