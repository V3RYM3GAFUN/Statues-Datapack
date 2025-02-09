$scoreboard players set desk_button Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Desk Button Feature"},{"text":" to "},{"score":{"name":"desk_button","objective":"Statues.FeatureFlags"}}]
