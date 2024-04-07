execute if score lights Statues.FeatureFlags matches 0 run scoreboard players set dev_auto_convert_lights Statues.FeatureFlags 0

execute if score doors Statues.FeatureFlags matches 0 run scoreboard players display numberformat doors Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score doors Statues.FeatureFlags matches 0 run scoreboard players display numberformat doors Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name doors Statues.FeatureFlags {"text":"Doors Feature"}

execute if score lights Statues.FeatureFlags matches 0 run scoreboard players display numberformat lights Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score lights Statues.FeatureFlags matches 0 run scoreboard players display numberformat lights Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name lights Statues.FeatureFlags {"text":"Lights Feature"}

execute if score power_doors Statues.FeatureFlags matches 0 run scoreboard players display numberformat power_doors Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score power_doors Statues.FeatureFlags matches 0 run scoreboard players display numberformat power_doors Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name power_doors Statues.FeatureFlags {"text":"Power Doors Feature"}

execute if score vents Statues.FeatureFlags matches 0 run scoreboard players display numberformat vents Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score vents Statues.FeatureFlags matches 0 run scoreboard players display numberformat vents Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name vents Statues.FeatureFlags {"text":"Vents Feature"}

execute if score floors Statues.FeatureFlags matches 0 run scoreboard players display numberformat floors Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score floors Statues.FeatureFlags matches 0 run scoreboard players display numberformat floors Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name floors Statues.FeatureFlags {"text":"Floors Feature"}

execute if score hiding Statues.FeatureFlags matches 0 run scoreboard players display numberformat hiding Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score hiding Statues.FeatureFlags matches 0 run scoreboard players display numberformat hiding Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name hiding Statues.FeatureFlags {"text":"Hiding Spot Feature"}

execute if score elevator Statues.FeatureFlags matches 0 run scoreboard players display numberformat elevator Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score elevator Statues.FeatureFlags matches 0 run scoreboard players display numberformat elevator Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name elevator Statues.FeatureFlags {"text":"Elevator Feature"}

execute if score dev_show_markers Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_show_markers Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_show_markers Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_show_markers Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_show_markers Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Show Markers","color":"white"}]

execute if score dev_show_interactions Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_show_interactions Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_show_interactions Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_show_interactions Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_show_interactions Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Show Interactions","color":"white"}]

execute if score dev_auto_convert_lights Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_auto_convert_lights Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_auto_convert_lights Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_auto_convert_lights Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_auto_convert_lights Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Auto Convert Lights","color":"white"}]

execute if score dev_allow_debug_info Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_allow_debug_info Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_allow_debug_info Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_allow_debug_info Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_allow_debug_info Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Allow Debug Info","color":"white"}]