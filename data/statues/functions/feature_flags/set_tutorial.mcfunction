$scoreboard players set tutorial Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Tutorial Feature"},{"text":" to "},{"score":{"name":"tutorial","objective":"Statues.FeatureFlags"}}]
