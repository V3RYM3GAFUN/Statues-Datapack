$scoreboard players set doors_3x3 Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Doors 3x3 Feature"},{"text":" to "},{"score":{"name":"doors_3x3","objective":"Statues.FeatureFlags"}}]
