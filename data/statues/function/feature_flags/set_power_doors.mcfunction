$scoreboard players set power_doors Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Power Doors Feature"},{"text":" to "},{"score":{"name":"power_doors","objective":"Statues.FeatureFlags"}}]
