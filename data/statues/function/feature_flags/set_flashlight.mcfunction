$scoreboard players set flashlight Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Flashlight Feature"},{"text":" to "},{"score":{"name":"flashlight","objective":"Statues.FeatureFlags"}}]
