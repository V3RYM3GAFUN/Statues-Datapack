$scoreboard players set dev_auto_convert_lights Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"[Dev] ","color":"gold"},{"text":"Auto Convert Lights","color":"white"},{"text":" to "},{"score":{"name":"dev_auto_convert_lights","objective":"Statues.FeatureFlags"}}]
