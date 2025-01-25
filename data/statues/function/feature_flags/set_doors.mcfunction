$scoreboard players set doors Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Doors Feature"},{"text":" to "},{"score":{"name":"doors","objective":"Statues.FeatureFlags"}}]
