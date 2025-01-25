$scoreboard players set compass_tracker Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Compass Tracker Feature"},{"text":" to "},{"score":{"name":"compass_tracker","objective":"Statues.FeatureFlags"}}]
