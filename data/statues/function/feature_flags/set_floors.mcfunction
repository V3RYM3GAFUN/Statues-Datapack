$scoreboard players set floors Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Floors Feature"},{"text":" to "},{"score":{"name":"floors","objective":"Statues.FeatureFlags"}}]
