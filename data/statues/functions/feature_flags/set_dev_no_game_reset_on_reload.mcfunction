$scoreboard players set dev_no_game_reset_on_reload Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"[Dev] ","color":"gold"},{"text":"No Reload Game On Reload","color":"white"},{"text":" to "},{"score":{"name":"dev_no_game_reset_on_reload","objective":"Statues.FeatureFlags"}}]
