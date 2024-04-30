$scoreboard players set dynamic_maps Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"[Experimental] ","color":"#9542f5"},{"text":"Dynamic Maps","color":"white"},{"text":" to "},{"score":{"name":"dynamic_maps","objective":"Statues.FeatureFlags"}}]
