$scoreboard players set elevator_freight Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"Elevator Freight Feature"},{"text":" to "},{"score":{"name":"elevator_freight","objective":"Statues.FeatureFlags"}}]
