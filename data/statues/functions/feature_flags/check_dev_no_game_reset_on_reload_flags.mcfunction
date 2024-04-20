execute if score dev_no_game_reset_on_reload Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use No Reload Game On Reload specific feature when the feature is disabled."}
execute if score dev_no_game_reset_on_reload Statues.FeatureFlags matches 0 run return fail
return 1