$scoreboard players set spectators_actionbar Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Spectators ActionBar Feature"},{"text":" to "},{"score":{"name":"spectators_actionbar","objective":"Statues.FeatureFlags"}}]
