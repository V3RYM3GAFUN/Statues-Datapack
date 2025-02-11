$scoreboard players set map_vote Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Map Vote Feature"},{"text":" to "},{"score":{"name":"map_vote","objective":"Statues.FeatureFlags"}}]
