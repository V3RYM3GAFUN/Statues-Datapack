$scoreboard players set dev_override_dev_loot_pools Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
tellraw @a [{"text":"Updated "},{"text":"[Dev] ","color":"gold"},{"text":"Override Dev Loot Pools","color":"white"},{"text":" to "},{"score":{"name":"dev_override_dev_loot_pools","objective":"Statues.FeatureFlags"}}]
