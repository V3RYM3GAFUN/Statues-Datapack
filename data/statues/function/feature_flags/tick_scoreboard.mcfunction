
execute if score abilities Statues.FeatureFlags matches ..0 run scoreboard players set class_preview Statues.FeatureFlags -1
execute if score tutorial Statues.FeatureFlags matches ..0 run scoreboard players set class_preview Statues.FeatureFlags -1
execute if score class_preview Statues.FeatureFlags matches -1 if score abilities Statues.FeatureFlags matches 1.. if score tutorial Statues.FeatureFlags matches 1.. run scoreboard players set class_preview Statues.FeatureFlags 0
execute if score doors Statues.FeatureFlags matches ..0 run scoreboard players set doors_1x2 Statues.FeatureFlags -1
execute if score doors_1x2 Statues.FeatureFlags matches -1 if score doors Statues.FeatureFlags matches 1.. run scoreboard players set doors_1x2 Statues.FeatureFlags 0
execute if score doors Statues.FeatureFlags matches ..0 run scoreboard players set doors_2x2 Statues.FeatureFlags -1
execute if score doors_2x2 Statues.FeatureFlags matches -1 if score doors Statues.FeatureFlags matches 1.. run scoreboard players set doors_2x2 Statues.FeatureFlags 0
execute if score doors Statues.FeatureFlags matches ..0 run scoreboard players set doors_3x3 Statues.FeatureFlags -1
execute if score doors_3x3 Statues.FeatureFlags matches -1 if score doors Statues.FeatureFlags matches 1.. run scoreboard players set doors_3x3 Statues.FeatureFlags 0
execute if score elevator Statues.FeatureFlags matches ..0 run scoreboard players set elevator_2x3x2 Statues.FeatureFlags -1
execute if score elevator_2x3x2 Statues.FeatureFlags matches -1 if score elevator Statues.FeatureFlags matches 1.. run scoreboard players set elevator_2x3x2 Statues.FeatureFlags 0
execute if score elevator Statues.FeatureFlags matches ..0 run scoreboard players set elevator_3x3x3 Statues.FeatureFlags -1
execute if score elevator_3x3x3 Statues.FeatureFlags matches -1 if score elevator Statues.FeatureFlags matches 1.. run scoreboard players set elevator_3x3x3 Statues.FeatureFlags 0
execute if score elevator Statues.FeatureFlags matches ..0 run scoreboard players set elevator_buttons Statues.FeatureFlags -1
execute if score elevator_buttons Statues.FeatureFlags matches -1 if score elevator Statues.FeatureFlags matches 1.. run scoreboard players set elevator_buttons Statues.FeatureFlags 0
execute if score elevator Statues.FeatureFlags matches ..0 run scoreboard players set elevator_freight Statues.FeatureFlags -1
execute if score elevator_freight Statues.FeatureFlags matches -1 if score elevator Statues.FeatureFlags matches 1.. run scoreboard players set elevator_freight Statues.FeatureFlags 0
execute if score survivors_healthbar Statues.FeatureFlags matches ..0 run scoreboard players set survivors_heart_sidebar Statues.FeatureFlags -1
execute if score survivors_heart_sidebar Statues.FeatureFlags matches -1 if score survivors_healthbar Statues.FeatureFlags matches 1.. run scoreboard players set survivors_heart_sidebar Statues.FeatureFlags 0
execute if score lights Statues.FeatureFlags matches ..0 run scoreboard players set dev_auto_convert_lights Statues.FeatureFlags -1
execute if score dev_auto_convert_lights Statues.FeatureFlags matches -1 if score lights Statues.FeatureFlags matches 1.. run scoreboard players set dev_auto_convert_lights Statues.FeatureFlags 0



execute if score abilities Statues.FeatureFlags matches 0 run scoreboard players display numberformat abilities Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score abilities Statues.FeatureFlags matches ..0 run scoreboard players display numberformat abilities Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name abilities Statues.FeatureFlags {"text":"Abilities Feature"}

execute if score blood_trails Statues.FeatureFlags matches 0 run scoreboard players display numberformat blood_trails Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score blood_trails Statues.FeatureFlags matches ..0 run scoreboard players display numberformat blood_trails Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name blood_trails Statues.FeatureFlags {"text":"Blood Trails Feature"}

execute if score tutorial Statues.FeatureFlags matches 0 run scoreboard players display numberformat tutorial Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score tutorial Statues.FeatureFlags matches ..0 run scoreboard players display numberformat tutorial Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name tutorial Statues.FeatureFlags {"text":"Tutorial Feature"}

execute if score class_preview Statues.FeatureFlags matches -1 run scoreboard players display numberformat class_preview Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}
execute if score class_preview Statues.FeatureFlags matches 0 run scoreboard players display numberformat class_preview Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score class_preview Statues.FeatureFlags matches ..0 run scoreboard players display numberformat class_preview Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name class_preview Statues.FeatureFlags {"text":"Class Preview Feature"}

execute if score compass_tracker Statues.FeatureFlags matches 0 run scoreboard players display numberformat compass_tracker Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score compass_tracker Statues.FeatureFlags matches ..0 run scoreboard players display numberformat compass_tracker Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name compass_tracker Statues.FeatureFlags {"text":"Compass Tracker Feature"}

execute if score desk_button Statues.FeatureFlags matches 0 run scoreboard players display numberformat desk_button Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score desk_button Statues.FeatureFlags matches ..0 run scoreboard players display numberformat desk_button Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name desk_button Statues.FeatureFlags {"text":"Desk Button Feature"}

execute if score doors Statues.FeatureFlags matches 0 run scoreboard players display numberformat doors Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score doors Statues.FeatureFlags matches ..0 run scoreboard players display numberformat doors Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name doors Statues.FeatureFlags {"text":"Doors Feature"}

execute if score doors_1x2 Statues.FeatureFlags matches -1 run scoreboard players display numberformat doors_1x2 Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}
execute if score doors_1x2 Statues.FeatureFlags matches 0 run scoreboard players display numberformat doors_1x2 Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score doors_1x2 Statues.FeatureFlags matches ..0 run scoreboard players display numberformat doors_1x2 Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name doors_1x2 Statues.FeatureFlags {"text":"Doors 1x2 Feature"}

execute if score doors_2x2 Statues.FeatureFlags matches -1 run scoreboard players display numberformat doors_2x2 Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}
execute if score doors_2x2 Statues.FeatureFlags matches 0 run scoreboard players display numberformat doors_2x2 Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score doors_2x2 Statues.FeatureFlags matches ..0 run scoreboard players display numberformat doors_2x2 Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name doors_2x2 Statues.FeatureFlags {"text":"Doors 2x2 Feature"}

execute if score doors_3x3 Statues.FeatureFlags matches -1 run scoreboard players display numberformat doors_3x3 Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}
execute if score doors_3x3 Statues.FeatureFlags matches 0 run scoreboard players display numberformat doors_3x3 Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score doors_3x3 Statues.FeatureFlags matches ..0 run scoreboard players display numberformat doors_3x3 Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name doors_3x3 Statues.FeatureFlags {"text":"Doors 3x3 Feature"}

execute if score dynamic_map Statues.FeatureFlags matches 0 run scoreboard players display numberformat dynamic_map Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dynamic_map Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dynamic_map Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dynamic_map Statues.FeatureFlags {"text":"Dynamic Map Feature"}

execute if score elevator Statues.FeatureFlags matches 0 run scoreboard players display numberformat elevator Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score elevator Statues.FeatureFlags matches ..0 run scoreboard players display numberformat elevator Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name elevator Statues.FeatureFlags {"text":"Elevator Feature"}

execute if score elevator_2x3x2 Statues.FeatureFlags matches -1 run scoreboard players display numberformat elevator_2x3x2 Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}
execute if score elevator_2x3x2 Statues.FeatureFlags matches 0 run scoreboard players display numberformat elevator_2x3x2 Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score elevator_2x3x2 Statues.FeatureFlags matches ..0 run scoreboard players display numberformat elevator_2x3x2 Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name elevator_2x3x2 Statues.FeatureFlags {"text":"Elevator 2x3x2 Feature"}

execute if score elevator_3x3x3 Statues.FeatureFlags matches -1 run scoreboard players display numberformat elevator_3x3x3 Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}
execute if score elevator_3x3x3 Statues.FeatureFlags matches 0 run scoreboard players display numberformat elevator_3x3x3 Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score elevator_3x3x3 Statues.FeatureFlags matches ..0 run scoreboard players display numberformat elevator_3x3x3 Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name elevator_3x3x3 Statues.FeatureFlags {"text":"Elevator 3x3x3 Feature"}

execute if score elevator_buttons Statues.FeatureFlags matches -1 run scoreboard players display numberformat elevator_buttons Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}
execute if score elevator_buttons Statues.FeatureFlags matches 0 run scoreboard players display numberformat elevator_buttons Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score elevator_buttons Statues.FeatureFlags matches ..0 run scoreboard players display numberformat elevator_buttons Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name elevator_buttons Statues.FeatureFlags {"text":"Elevator Buttons Feature"}

execute if score elevator_freight Statues.FeatureFlags matches -1 run scoreboard players display numberformat elevator_freight Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}
execute if score elevator_freight Statues.FeatureFlags matches 0 run scoreboard players display numberformat elevator_freight Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score elevator_freight Statues.FeatureFlags matches ..0 run scoreboard players display numberformat elevator_freight Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name elevator_freight Statues.FeatureFlags {"text":"Elevator Freight Feature"}

execute if score flashlight Statues.FeatureFlags matches 0 run scoreboard players display numberformat flashlight Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score flashlight Statues.FeatureFlags matches ..0 run scoreboard players display numberformat flashlight Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name flashlight Statues.FeatureFlags {"text":"Flashlight Feature"}

execute if score floors Statues.FeatureFlags matches 0 run scoreboard players display numberformat floors Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score floors Statues.FeatureFlags matches ..0 run scoreboard players display numberformat floors Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name floors Statues.FeatureFlags {"text":"Floors Feature"}

execute if score game_replay Statues.FeatureFlags matches 0 run scoreboard players display numberformat game_replay Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score game_replay Statues.FeatureFlags matches ..0 run scoreboard players display numberformat game_replay Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name game_replay Statues.FeatureFlags {"text":"Game Replay Feature"}

execute if score hiding Statues.FeatureFlags matches 0 run scoreboard players display numberformat hiding Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score hiding Statues.FeatureFlags matches ..0 run scoreboard players display numberformat hiding Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name hiding Statues.FeatureFlags {"text":"Hiding Spot Feature"}

execute if score lights Statues.FeatureFlags matches 0 run scoreboard players display numberformat lights Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score lights Statues.FeatureFlags matches ..0 run scoreboard players display numberformat lights Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name lights Statues.FeatureFlags {"text":"Lights Feature"}

execute if score location_markers Statues.FeatureFlags matches 0 run scoreboard players display numberformat location_markers Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score location_markers Statues.FeatureFlags matches ..0 run scoreboard players display numberformat location_markers Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name location_markers Statues.FeatureFlags {"text":"Location Markers Feature"}

execute if score map_tick Statues.FeatureFlags matches 0 run scoreboard players display numberformat map_tick Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score map_tick Statues.FeatureFlags matches ..0 run scoreboard players display numberformat map_tick Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name map_tick Statues.FeatureFlags {"text":"Map Tick Feature"}

execute if score power_doors Statues.FeatureFlags matches 0 run scoreboard players display numberformat power_doors Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score power_doors Statues.FeatureFlags matches ..0 run scoreboard players display numberformat power_doors Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name power_doors Statues.FeatureFlags {"text":"Power Doors Feature"}

execute if score receptionist Statues.FeatureFlags matches 0 run scoreboard players display numberformat receptionist Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score receptionist Statues.FeatureFlags matches ..0 run scoreboard players display numberformat receptionist Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name receptionist Statues.FeatureFlags {"text":"Receptionist Feature"}

execute if score queue Statues.FeatureFlags matches 0 run scoreboard players display numberformat queue Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score queue Statues.FeatureFlags matches ..0 run scoreboard players display numberformat queue Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name queue Statues.FeatureFlags {"text":"Queue Feature"}

execute if score sas Statues.FeatureFlags matches 0 run scoreboard players display numberformat sas Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score sas Statues.FeatureFlags matches ..0 run scoreboard players display numberformat sas Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name sas Statues.FeatureFlags {"text":"SAS Machines Feature"}

execute if score spectators_actionbar Statues.FeatureFlags matches 0 run scoreboard players display numberformat spectators_actionbar Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score spectators_actionbar Statues.FeatureFlags matches ..0 run scoreboard players display numberformat spectators_actionbar Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name spectators_actionbar Statues.FeatureFlags {"text":"Spectators ActionBar Feature"}

execute if score survivors_healthbar Statues.FeatureFlags matches 0 run scoreboard players display numberformat survivors_healthbar Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score survivors_healthbar Statues.FeatureFlags matches ..0 run scoreboard players display numberformat survivors_healthbar Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name survivors_healthbar Statues.FeatureFlags {"text":"Survivors Heartbar Feature"}

execute if score survivors_heart_sidebar Statues.FeatureFlags matches -1 run scoreboard players display numberformat survivors_heart_sidebar Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}
execute if score survivors_heart_sidebar Statues.FeatureFlags matches 0 run scoreboard players display numberformat survivors_heart_sidebar Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score survivors_heart_sidebar Statues.FeatureFlags matches ..0 run scoreboard players display numberformat survivors_heart_sidebar Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name survivors_heart_sidebar Statues.FeatureFlags {"text":"Survivors Heart Sidebar Feature"}

execute if score survivors_heartbeat Statues.FeatureFlags matches 0 run scoreboard players display numberformat survivors_heartbeat Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score survivors_heartbeat Statues.FeatureFlags matches ..0 run scoreboard players display numberformat survivors_heartbeat Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name survivors_heartbeat Statues.FeatureFlags {"text":"Survivors' Heartbeat Feature"}

execute if score vents Statues.FeatureFlags matches 0 run scoreboard players display numberformat vents Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score vents Statues.FeatureFlags matches ..0 run scoreboard players display numberformat vents Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name vents Statues.FeatureFlags {"text":"Vents Feature"}

execute if score dev_allow_debug_info Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_allow_debug_info Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_allow_debug_info Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dev_allow_debug_info Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_allow_debug_info Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Allow Debug Info","color":"white"}]

execute if score dev_allow_empty_game Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_allow_empty_game Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_allow_empty_game Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dev_allow_empty_game Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_allow_empty_game Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Allow Empty Game","color":"white"}]

execute if score dev_auto_convert_lights Statues.FeatureFlags matches -1 run scoreboard players display numberformat dev_auto_convert_lights Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}
execute if score dev_auto_convert_lights Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_auto_convert_lights Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_auto_convert_lights Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dev_auto_convert_lights Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_auto_convert_lights Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Auto Convert Lights","color":"white"}]

execute if score dev_infinite_game_time Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_infinite_game_time Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_infinite_game_time Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dev_infinite_game_time Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_infinite_game_time Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Infinite Game Time","color":"white"}]

execute if score dev_no_game_reset_on_reload Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_no_game_reset_on_reload Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_no_game_reset_on_reload Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dev_no_game_reset_on_reload Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_no_game_reset_on_reload Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"No Reset Game On Reload","color":"white"}]

execute if score dev_no_start_requirement Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_no_start_requirement Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_no_start_requirement Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dev_no_start_requirement Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_no_start_requirement Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"No Start Requirement","color":"white"}]

execute if score dev_override_dev_loot_pools Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_override_dev_loot_pools Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_override_dev_loot_pools Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dev_override_dev_loot_pools Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_override_dev_loot_pools Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Override Dev Loot Pools","color":"white"}]

execute if score dev_show_interactions Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_show_interactions Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_show_interactions Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dev_show_interactions Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_show_interactions Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Show Interactions","color":"white"}]

execute if score dev_show_markers Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_show_markers Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_show_markers Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dev_show_markers Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_show_markers Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Show Markers (Block Aligned)","color":"white"}]

execute if score dev_show_markers_accurate Statues.FeatureFlags matches 0 run scoreboard players display numberformat dev_show_markers_accurate Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score dev_show_markers_accurate Statues.FeatureFlags matches ..0 run scoreboard players display numberformat dev_show_markers_accurate Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name dev_show_markers_accurate Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"Show Markers (Accurate)","color":"white"}]
