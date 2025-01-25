$scoreboard players set dev_show_markers_accurate Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"[Dev] ","color":"gold"},{"text":"Show Markers (Accurate)","color":"white"},{"text":" to "},{"score":{"name":"dev_show_markers_accurate","objective":"Statues.FeatureFlags"}}]
