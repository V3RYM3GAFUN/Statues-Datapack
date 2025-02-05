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

#> List of tags for generating objective items:

function statues:ingame/maps/facade/pool_locations_load

execute at @e[tag=facade_genkey_pool] run data merge block ~ ~ ~ {LootTable:"statues:blocks/barrel_default"}
execute at @e[tag=facade_labkey_pool] run data merge block ~ ~ ~ {LootTable:"statues:blocks/barrel_default"}
execute at @e[tag=facade_highclasskey_pool] run data merge block ~ ~ ~ {LootTable:"statues:blocks/barrel_default"}
execute at @e[tag=facade_armorykey_pool] run data merge block ~ ~ ~ {LootTable:"statues:blocks/barrel_default"}
execute at @e[tag=facade_book_pool] run data merge block ~ ~ ~ {LootTable:"statues:blocks/barrel_default"}

#facade_genkey
execute at @e[tag=facade_genkey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/genkey_0"}

#facade_labkey
execute at @e[tag=facade_labkey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/labkey_1"}
execute at @e[tag=facade_labkey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/labkey_2"}
execute at @e[tag=facade_labkey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/labkey_3"}

#facade_highclasskey
execute at @e[tag=facade_highclasskey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/highclasskey_4"}
execute at @e[tag=facade_highclasskey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/highclasskey_5"}
execute at @e[tag=facade_highclasskey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/highclasskey_6"}

#facade_book
execute at @e[tag=facade_book_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/book_7"}

#facade_armory
execute at @e[tag=facade_armorykey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/armorykey_8"}
execute at @e[tag=facade_armorykey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/armorykey_9"}
execute at @e[tag=facade_armorykey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/armorykey_10"}
execute at @e[tag=facade_armorykey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/armorykey_11"}
execute at @e[tag=facade_armorykey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:items/facade/objectives/armorykey_12"}

tag @e[tag=key_spawned] remove key_spawned
function statues:ingame/maps/facade/pool_locations_unload

execute at @e[tag=armory_ammo_box] run data merge block ~ ~ ~ {LootTable:"statues:blocks/ammo_crate"}

scoreboard players set $CompassSelector Statues.DynamicData 0

#> Stop force loading the chunks once the items have generated
forceload remove 54 257 -82 394

advancement grant @a[team=!Lobby,team=!Dev] only statues:game/maps/facade/play_once