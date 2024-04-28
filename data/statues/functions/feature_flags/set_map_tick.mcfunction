$scoreboard players set map_tick Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Map Tick Feature"},{"text":" to "},{"score":{"name":"map_tick","objective":"Statues.FeatureFlags"}}]
