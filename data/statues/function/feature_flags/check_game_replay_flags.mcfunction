execute if score game_replay Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Game Replay specific feature when the feature is disabled."}
return fail