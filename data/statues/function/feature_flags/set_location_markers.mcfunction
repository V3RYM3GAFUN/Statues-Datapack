$scoreboard players set location_markers Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Location Markers Feature"},{"text":" to "},{"score":{"name":"location_markers","objective":"Statues.FeatureFlags"}}]
