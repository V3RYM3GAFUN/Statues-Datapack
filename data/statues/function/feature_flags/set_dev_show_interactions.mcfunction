$scoreboard players set dev_show_interactions Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"[Dev] ","color":"gold"},{"text":"Show Interactions","color":"white"},{"text":" to "},{"score":{"name":"dev_show_interactions","objective":"Statues.FeatureFlags"}}]
