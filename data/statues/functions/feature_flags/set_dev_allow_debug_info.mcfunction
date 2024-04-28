$scoreboard players set dev_allow_debug_info Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"[Dev] ","color":"gold"},{"text":"Allow Debug Info","color":"white"},{"text":" to "},{"score":{"name":"dev_allow_debug_info","objective":"Statues.FeatureFlags"}}]
