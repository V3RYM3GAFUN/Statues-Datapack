$scoreboard players set dev_infinite_game_time Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"[Dev] ","color":"gold"},{"text":"Infinite Game Time","color":"white"},{"text":" to "},{"score":{"name":"dev_infinite_game_time","objective":"Statues.FeatureFlags"}}]
