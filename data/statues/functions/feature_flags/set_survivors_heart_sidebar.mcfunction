$scoreboard players set survivors_heart_sidebar Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Survivors Heart Sidebar Feature"},{"text":" to "},{"score":{"name":"survivors_heart_sidebar","objective":"Statues.FeatureFlags"}}]
