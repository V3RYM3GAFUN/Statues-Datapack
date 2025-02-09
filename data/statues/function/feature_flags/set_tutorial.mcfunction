$scoreboard players set tutorial Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Tutorial Feature"},{"text":" to "},{"score":{"name":"tutorial","objective":"Statues.FeatureFlags"}}]
