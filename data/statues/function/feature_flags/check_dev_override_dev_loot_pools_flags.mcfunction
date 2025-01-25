execute if score dev_override_dev_loot_pools Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Override Dev Loot Pools specific feature when the feature is disabled."}
return fail