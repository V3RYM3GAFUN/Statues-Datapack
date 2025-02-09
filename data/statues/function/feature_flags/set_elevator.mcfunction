$scoreboard players set elevator Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Elevator Feature"},{"text":" to "},{"score":{"name":"elevator","objective":"Statues.FeatureFlags"}}]
