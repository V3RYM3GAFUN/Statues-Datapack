execute if score spectators_actionbar Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use spectators_actionbar specific feature when the feature is disabled."}
execute if score spectators_actionbar Statues.FeatureFlags matches 0 run return fail
return 1