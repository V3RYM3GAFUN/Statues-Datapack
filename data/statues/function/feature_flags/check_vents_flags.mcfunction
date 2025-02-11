execute if score vents Statues.FeatureFlags matches 1.. run return 1
tag @s add ff_err_source
execute on origin if entity @s[type=player] run tag @s add ff_err_source
execute on target if entity @s[type=player] run tag @s add ff_err_source
execute if entity @e[limit=1,tag=ff_err_source] run tellraw @a[tag=dev_see_feature_flag_failed_uses] [{"color":"red","text":"Tried to use "},{"text":"Vents","color":"aqua","italic":true,"hoverEvent":{"action":"show_text","value":"Click to enable the feature flag"},"clickEvent":{"action":"run_command","value":"/function statues:feature_flags/set_vents {value:1}"}},{"text":" specific function while the feature is disabled."},{"text":" Source: ","italic":true},{"selector":"@e[tag=ff_err_source]","italic":true}]
execute unless entity @e[limit=1,tag=ff_err_source] run tellraw @a[tag=dev_see_feature_flag_failed_uses] [{"color":"red","text":"Tried to use "},{"text":"Vents","color":"aqua","italic":true,"hoverEvent":{"action":"show_text","value":"Click to enable the feature flag"},"clickEvent":{"action":"run_command","value":"/function statues:feature_flags/set_vents {value:1}"}},{"text":" specific function while the feature is disabled."},{"text":" Source: Server","italic":true}]
tag @e[tag=ff_err_source] remove ff_err_source
return fail