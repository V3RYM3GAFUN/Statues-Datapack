$scoreboard players set dynamic_maps Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Dynamic Maps Feature"},{"text":" to "},{"score":{"name":"dynamic_maps","objective":"Statues.FeatureFlags"}}]
