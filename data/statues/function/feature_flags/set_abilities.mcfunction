$scoreboard players set abilities Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Abilities Feature"},{"text":" to "},{"score":{"name":"abilities","objective":"Statues.FeatureFlags"}}]
