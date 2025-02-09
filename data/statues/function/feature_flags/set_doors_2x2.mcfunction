$scoreboard players set doors_2x2 Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Doors 2x2 Feature"},{"text":" to "},{"score":{"name":"doors_2x2","objective":"Statues.FeatureFlags"}}]
