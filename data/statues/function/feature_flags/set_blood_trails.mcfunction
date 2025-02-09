$scoreboard players set blood_trails Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Blood Trails Feature"},{"text":" to "},{"score":{"name":"blood_trails","objective":"Statues.FeatureFlags"}}]
