execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_genkey] add facade_genkey_pool
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_labkey] add facade_labkey_pool
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_highclasskey] add facade_highclasskey_pool
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_highclasskey] add facade_armorykey_pool
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_book] add facade_book_pool

execute if score $IsDevGame Statues.DynamicData matches 1 if score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run tag @e[tag=facade_genkey_devonly] add facade_genkey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 if score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run tag @e[tag=facade_labkey_devonly] add facade_labkey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 if score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run tag @e[tag=facade_highclasskey_devonly] add facade_highclasskey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 if score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run tag @e[tag=facade_armorykey_devonly] add facade_armorykey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 if score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run tag @e[tag=facade_book_devonly] add facade_book_pool

execute if score $IsDevGame Statues.DynamicData matches 1 unless score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run tag @e[tag=facade_genkey] add facade_genkey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 unless score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run tag @e[tag=facade_labkey] add facade_labkey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 unless score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run tag @e[tag=facade_highclasskey] add facade_highclasskey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 unless score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run tag @e[tag=facade_highclasskey] add facade_armorykey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 unless score dev_override_dev_loot_pools Statues.FeatureFlags matches 1 run tag @e[tag=facade_book] add facade_book_pool

tag @e[tag=facade_genkey_pool] add facade_all_pool
tag @e[tag=facade_labkey_pool] add facade_all_pool
tag @e[tag=facade_highclasskey_pool] add facade_all_pool
tag @e[tag=facade_armorykey_pool] add facade_all_pool
tag @e[tag=facade_book_pool] add facade_all_pool