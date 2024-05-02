$scoreboard players set survivors_heartbeat Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Survivors' Heartbeat Feature"},{"text":" to "},{"score":{"name":"survivors_heartbeat","objective":"Statues.FeatureFlags"}}]
