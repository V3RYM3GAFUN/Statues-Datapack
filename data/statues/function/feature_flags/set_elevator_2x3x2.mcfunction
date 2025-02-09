$scoreboard players set elevator_2x3x2 Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Elevator 2x3x2 Feature"},{"text":" to "},{"score":{"name":"elevator_2x3x2","objective":"Statues.FeatureFlags"}}]
