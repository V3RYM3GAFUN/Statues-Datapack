$scoreboard players set lights Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Lights Feature"},{"text":" to "},{"score":{"name":"lights","objective":"Statues.FeatureFlags"}}]
