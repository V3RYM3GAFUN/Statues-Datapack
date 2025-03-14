scoreboard players set $Objective Statues.DynamicData 0

time set 18000
weather rain

tp @a[team=Monster] @e[type=marker,tag=lockdown_monster_start,limit=1]

scoreboard players set $MonsterSpawnDelay Statues.DynamicData 1800
tellraw @a {"translate": "statues.game.grace_period","bold": true,"color": "aqua"}

#> More than enough to fill up potential lost health
effect give @a[team=Survivor] instant_health 1 5 true

tp @a[team=Survivor] @n[type=marker,tag=lockdown_survivor_start]
tag @a[team=Survivor] add has_compass_tracker

function statues:mechanics/lights/lights_on

#> Set the Core heartbeat timer
scoreboard players set $Core.Ticks Statues.DynamicData 20

scoreboard players set $CompassSelector Statues.DynamicData 0

#> ignore setting up stuff, if in a replay
execute if score $ReplayWatching Statues.DynamicData matches 1 run return 0

#> Write loot tables to barrels
function statues:ingame/maps/common/pool_locations_load

execute at @e[tag=location_marker_i_mapkey] run data modify block ~ ~ ~ LootTable set value "statues:blocks/barrel_default"

execute at @e[tag=armory_ammo_box] run data modify block ~ ~ ~ LootTable set value "statues:blocks/ammo_crate"

advancement grant @a[team=!Lobby,team=!Dev] only statues:game/maps/lockdown/play_once

# Fuel can
execute at @e[tag=location_marker_ik_mapkey_fuel,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/fuel_0"
execute at @e[tag=location_marker_ik_mapkey_fuel,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/fuel_1"
execute at @e[tag=location_marker_ik_mapkey_fuel,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/fuel_2"
execute at @e[tag=location_marker_ik_mapkey_fuel,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/fuel_3"
execute at @e[tag=location_marker_ik_mapkey_fuel,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/fuel_4"
execute at @e[tag=location_marker_ik_mapkey_fuel,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/fuel_5"

# Keycard 1
execute at @e[tag=location_marker_ik_mapkey_keycard1,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/keycard1_6"
execute at @e[tag=location_marker_ik_mapkey_keycard1,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/keycard1_7"
execute at @e[tag=location_marker_ik_mapkey_keycard1,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/keycard1_8"

# Keycard 2
execute at @e[tag=location_marker_ik_mapkey_keycard2,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/keycard2_9"
execute at @e[tag=location_marker_ik_mapkey_keycard2,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/keycard2_10"

# Code
execute at @e[tag=location_marker_ik_mapkey_code,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/code_11"
execute at @e[tag=location_marker_ik_mapkey_code,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/code_12"
execute at @e[tag=location_marker_ik_mapkey_code,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/code_13"

# Armory Keycard
execute at @e[tag=location_marker_ik_mapkey_armory,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/armorykey_14"
execute at @e[tag=location_marker_ik_mapkey_armory,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/armorykey_15"
execute at @e[tag=location_marker_ik_mapkey_armory,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/armorykey_16"
execute at @e[tag=location_marker_ik_mapkey_armory,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/armorykey_17"
execute at @e[tag=location_marker_ik_mapkey_armory,sort=random,limit=1,predicate=statues:is_default_barrel_loot] run data modify block ~ ~ ~ LootTable set value "statues:items/lockdown/objectives/armorykey_18"

function statues:ingame/maps/common/pool_locations_unload

execute at @e[tag=armory_ammo_box] run data modify block ~ ~ ~ LootTable set value "statues:blocks/ammo_crate"

#> Stop force loading the chunks once the items have generated
forceload remove 97 81 -115 -110

#> Timer for the intro cutscene
scoreboard players set $Timer.Ticks Statues.TempData 380