$scoreboard players set elevator_buttons Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Elevator Buttons Feature"},{"text":" to "},{"score":{"name":"elevator_buttons","objective":"Statues.FeatureFlags"}}]
