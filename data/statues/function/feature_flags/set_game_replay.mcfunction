$scoreboard players set game_replay Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"Game Replay Feature"},{"text":" to "},{"score":{"name":"game_replay","objective":"Statues.FeatureFlags"}}]
