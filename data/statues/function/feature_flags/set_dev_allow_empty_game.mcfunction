$scoreboard players set dev_allow_empty_game Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"[Dev] ","color":"gold"},{"text":"Allow Empty Game","color":"white"},{"text":" to "},{"score":{"name":"dev_allow_empty_game","objective":"Statues.FeatureFlags"}}]
