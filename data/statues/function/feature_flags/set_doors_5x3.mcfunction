$scoreboard players set doors_5x3 Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Doors 5x3 Feature"},{"text":" to "},{"score":{"name":"doors_5x3","objective":"Statues.FeatureFlags"}}]
