scoreboard players set $Objective Statues.DynamicData 0

time set 8000
weather clear

tp @a[team=Monster] -29.5 -56 324.5 -90 0

scoreboard players set $MonsterSpawnDelay Statues.DynamicData 1800
tellraw @a {"text": "90 seconds grace period for survivors.","bold": true,"color": "aqua"}

#> More than enough to fill up potential lost health
effect give @a[team=Survivor] instant_health 1 5 true

tp @a[team=Survivor] 44.5 -56 322 90 0
tag @a[team=Survivor] add has_compass_tracker

#> Set the Core heartbeat timer
scoreboard players set $Core.Ticks Statues.DynamicData 20

#> List of tags for generating objective items:

execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_genkey] add facade_genkey_pool
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_labkey] add facade_labkey_pool
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_highclasskey] add facade_highclasskey_pool
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_highclasskey] add facade_armorykey_pool
execute unless score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_book] add facade_book_pool

execute if score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_genkey_devonly] add facade_genkey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_labkey_devonly] add facade_labkey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_highclasskey_devonly] add facade_highclasskey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_armorykey_devonly] add facade_armorykey_pool
execute if score $IsDevGame Statues.DynamicData matches 1 run tag @e[tag=facade_book_devonly] add facade_book_pool

execute at @e[tag=facade_genkey_pool] run data merge block ~ ~ ~ {LootTable:"statues:blocks/barrel_default"}
execute at @e[tag=facade_labkey_pool] run data merge block ~ ~ ~ {LootTable:"statues:blocks/barrel_default"}
execute at @e[tag=facade_highclasskey_pool] run data merge block ~ ~ ~ {LootTable:"statues:blocks/barrel_default"}
execute at @e[tag=facade_armorykey_pool] run data merge block ~ ~ ~ {LootTable:"statues:blocks/barrel_default"}
execute at @e[tag=facade_book_pool] run data merge block ~ ~ ~ {LootTable:"statues:blocks/barrel_default"}

#facade_genkey
execute at @e[tag=facade_genkey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_genkey_0"}

#facade_labkey
execute at @e[tag=facade_labkey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_labkey_1"}
execute at @e[tag=facade_labkey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_labkey_2"}
execute at @e[tag=facade_labkey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_labkey_3"}

#facade_highclasskey
execute at @e[tag=facade_highclasskey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_highclasskey_4"}
execute at @e[tag=facade_highclasskey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_highclasskey_5"}
execute at @e[tag=facade_highclasskey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_highclasskey_6"}

#facade_book
execute at @e[tag=facade_book_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_book_7"}

#facade_armory
execute at @e[tag=facade_armorykey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_8"}
execute at @e[tag=facade_armorykey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_9"}
execute at @e[tag=facade_armorykey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_10"}
execute at @e[tag=facade_armorykey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_11"}
execute at @e[tag=facade_armorykey_pool,sort=random,limit=1,nbt=!{LootTable:"statues:blocks/barrel_default"}] run data merge block ~ ~ ~ {LootTable:"statues:objective_items/facade_armorykey_12"}

tag @e[tag=key_spawned] remove key_spawned
tag @e[tag=facade_genkey_pool] remove facade_genkey_pool
tag @e[tag=facade_labkey_pool] remove facade_labkey_pool
tag @e[tag=facade_highclasskey_pool] remove facade_highclasskey_pool
tag @e[tag=facade_armorykey_pool] remove facade_armorykey_pool
tag @e[tag=facade_book_pool] remove facade_book_pool

execute at @e[tag=armory_ammo_box] run loot insert ~ ~ ~ loot statues:blocks/ammo_crate

scoreboard players set $CompassSelector Statues.DynamicData 0

#> Stop force loading the chunks once the items have generated
forceload remove 54 257 -82 394