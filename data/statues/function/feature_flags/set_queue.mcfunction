$scoreboard players set queue Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Queue Feature"},{"text":" to "},{"score":{"name":"queue","objective":"Statues.FeatureFlags"}}]
