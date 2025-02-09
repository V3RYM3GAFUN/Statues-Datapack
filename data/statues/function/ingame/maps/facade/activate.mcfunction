scoreboard players set $Objective Statues.DynamicData 0

time set 8000
weather clear

tp @a[team=Monster] @e[type=marker,tag=facade_monster_start,limit=1]

scoreboard players set $MonsterSpawnDelay Statues.DynamicData 1800
tellraw @a {"translate": "statues.game.grace_period","bold": true,"color": "aqua"}

#> More than enough to fill up potential lost health
effect give @a[team=Survivor] instant_health 1 5 true

tp @a[team=Survivor] @e[type=marker,tag=facade_survivor_start,limit=1]
tag @a[team=Survivor] add has_compass_tracker

#> Set the Core heartbeat timer
scoreboard players set $Core.Ticks Statues.DynamicData 20

scoreboard players set $CompassSelector Statues.DynamicData 0

#> ignore setting up stuff, if in a replay
execute if score $ReplayWatching Statues.DynamicData matches 1 run return 0

#> Write loot tables to barrels
function statues:ingame/maps/common/pool_locations_load

execute at @e[tag=location_marker_i_mapkey] run data modify block ~ ~ ~ LootTable set value "statues:blocks/barrel_default"

# generator key
execute at @e[tag=location_marker_ik_mapkey_generator,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/genkey_0"

# lab key
execute at @e[tag=location_marker_ik_mapkey_lab,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/labkey_1"
execute at @e[tag=location_marker_ik_mapkey_lab,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/labkey_2"
execute at @e[tag=location_marker_ik_mapkey_lab,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/labkey_3"

# high class key
execute at @e[tag=location_marker_ik_mapkey_high_class,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/highclasskey_4"
execute at @e[tag=location_marker_ik_mapkey_high_class,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/highclasskey_5"
execute at @e[tag=location_marker_ik_mapkey_high_class,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/highclasskey_6"

# book
execute at @e[tag=location_marker_ik_mapkey_book,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/book_7"

# armory key
execute at @e[tag=location_marker_ik_mapkey_armory,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/armorykey_8"
execute at @e[tag=location_marker_ik_mapkey_armory,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/armorykey_9"
execute at @e[tag=location_marker_ik_mapkey_armory,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/armorykey_10"
execute at @e[tag=location_marker_ik_mapkey_armory,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/armorykey_11"
execute at @e[tag=location_marker_ik_mapkey_armory,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/facade/objectives/armorykey_12"

execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 run tag @e[tag=location_marker_i_mapkey,predicate=!statues:is_default_barrel_loot] add facade_all_pool_has_key
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/genkey_0"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.Generator"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/labkey_1"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.Lab"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/labkey_2"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.Lab"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/labkey_3"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.Lab"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/highclasskey_4"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.HighClass"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/highclasskey_5"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.HighClass"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/highclasskey_6"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.HighClass"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/book_7"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.Book"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/armorykey_8"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.Armory"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/armorykey_9"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.Armory"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/armorykey_10"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.Armory"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/armorykey_11"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.Armory"}
execute if score game_replay Statues.FeatureFlags matches 1.. if score $ReplayRecording Statues.DynamicData matches 1 as @e[tag=facade_all_pool_has_key] at @s if block ~ ~ ~ barrel{LootTable:"statues:items/facade/objectives/armorykey_12"} run function statues:mechanics/game_replay/mark_key_location {kind:"$KeyKind.Armory"}

function statues:ingame/maps/common/pool_locations_unload

execute at @e[tag=armory_ammo_box] run data modify block ~ ~ ~ LootTable set value "statues:blocks/ammo_crate"

#> Stop force loading the chunks once the items have generated
forceload remove 54 257 -82 394

advancement grant @a[team=!Lobby,team=!Dev] only statues:game/maps/facade/play_once