$scoreboard players set vents Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Vents Feature"},{"text":" to "},{"score":{"name":"vents","objective":"Statues.FeatureFlags"}}]
