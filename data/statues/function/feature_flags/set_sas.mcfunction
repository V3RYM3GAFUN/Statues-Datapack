$scoreboard players set sas Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"SAS Machines Feature"},{"text":" to "},{"score":{"name":"sas","objective":"Statues.FeatureFlags"}}]
