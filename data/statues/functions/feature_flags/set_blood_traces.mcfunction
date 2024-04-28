$scoreboard players set blood_traces Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Blood Trails Feature"},{"text":" to "},{"score":{"name":"blood_traces","objective":"Statues.FeatureFlags"}}]
