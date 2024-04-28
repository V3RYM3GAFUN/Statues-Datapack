$scoreboard players set abilities Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Abilities Feature"},{"text":" to "},{"score":{"name":"abilities","objective":"Statues.FeatureFlags"}}]
