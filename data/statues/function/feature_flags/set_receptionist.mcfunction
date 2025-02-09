$scoreboard players set receptionist Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Receptionist Feature"},{"text":" to "},{"score":{"name":"receptionist","objective":"Statues.FeatureFlags"}}]
