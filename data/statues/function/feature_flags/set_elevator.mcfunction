$scoreboard players set elevator Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Elevator Feature"},{"text":" to "},{"score":{"name":"elevator","objective":"Statues.FeatureFlags"}}]
