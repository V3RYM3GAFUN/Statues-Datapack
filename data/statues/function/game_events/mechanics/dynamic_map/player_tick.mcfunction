# TODO: Dynamic Map may replace Floors
execute if score dynamic_map Statues.FeatureFlags matches 1.. unless entity @s[team=!Survivor,team=!Monster,tag=!dev_always_update_dynamic_map] run function statues:mechanics/dynamic_map/tick_player