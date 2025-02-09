$scoreboard players set receptionist Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Receptionist Feature"},{"text":" to "},{"score":{"name":"receptionist","objective":"Statues.FeatureFlags"}}]
