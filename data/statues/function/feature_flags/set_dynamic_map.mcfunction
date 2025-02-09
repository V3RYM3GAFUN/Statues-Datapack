$scoreboard players set dynamic_map Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Dynamic Map Feature"},{"text":" to "},{"score":{"name":"dynamic_map","objective":"Statues.FeatureFlags"}}]
