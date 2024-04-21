execute if score dev_infinite_game_time Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Infinite Game Time specific feature when the feature is disabled."}
return fail