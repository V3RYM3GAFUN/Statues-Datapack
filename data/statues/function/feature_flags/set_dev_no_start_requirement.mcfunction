$scoreboard players set dev_no_start_requirement Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"[Dev] ","color":"gold"},{"text":"No Start Requirement","color":"white"},{"text":" to "},{"score":{"name":"dev_no_start_requirement","objective":"Statues.FeatureFlags"}}]
