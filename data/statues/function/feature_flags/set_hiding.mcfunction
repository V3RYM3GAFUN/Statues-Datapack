$scoreboard players set hiding Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Hiding Spot Feature"},{"text":" to "},{"score":{"name":"hiding","objective":"Statues.FeatureFlags"}}]
