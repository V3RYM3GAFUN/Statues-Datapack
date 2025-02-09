execute if score dev_no_game_reset_on_reload Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use No Reset Game On Reload specific feature when the feature is disabled."}
return fail