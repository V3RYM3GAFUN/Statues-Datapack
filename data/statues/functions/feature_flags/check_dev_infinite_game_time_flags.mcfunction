execute if score dev_infinite_game_time Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Infinite Game Time specific feature when the feature is disabled."}
execute if score dev_infinite_game_time Statues.FeatureFlags matches 0 run return fail
return 1