$scoreboard players set experimental_flashlight Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"[Experimental] ","color":"#9542f5"},{"text":"Flashlight (Next)","color":"white"},{"text":" to "},{"score":{"name":"experimental_flashlight","objective":"Statues.FeatureFlags"}}]
