$scoreboard players set doors_1x2 Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Doors 1x2 Feature"},{"text":" to "},{"score":{"name":"doors_1x2","objective":"Statues.FeatureFlags"}}]
