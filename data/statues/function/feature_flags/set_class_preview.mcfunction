$scoreboard players set class_preview Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Class Preview Feature"},{"text":" to "},{"score":{"name":"class_preview","objective":"Statues.FeatureFlags"}}]
