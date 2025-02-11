$scoreboard players set survivors_healthbar Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Survivors Heartbar Feature"},{"text":" to "},{"score":{"name":"survivors_healthbar","objective":"Statues.FeatureFlags"}}]
