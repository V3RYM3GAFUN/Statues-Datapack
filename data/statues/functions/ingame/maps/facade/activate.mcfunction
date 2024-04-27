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

#facade_genkey
execute at @e[tag=facade_genkey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:1,display:{Name:'{"text":"Emergency Generator Key","italic": false}'},facade_genkey_item:1b,objective_item:1b,item_objective_id:0}

#facade_labkey
execute at @e[tag=facade_labkey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:2,display:{Name:'{"text":"Lab access keycard","italic": false}'},facade_labkey_item:1b,objective_item:1b,item_objective_id:1}
execute at @e[tag=facade_labkey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:2,display:{Name:'{"text":"Lab access keycard","italic": false}'},facade_labkey_item:1b,objective_item:1b,item_objective_id:2}
execute at @e[tag=facade_labkey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:2,display:{Name:'{"text":"Lab access keycard","italic": false}'},facade_labkey_item:1b,objective_item:1b,item_objective_id:3}

#facade_highclasskey
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:4,display:{Name:'{"text":"High class keycard","italic": false}'},facade_highclass_item:1b,objective_item:1b,item_objective_id:4}
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:4,display:{Name:'{"text":"High class keycard","italic": false}'},facade_highclass_item:1b,objective_item:1b,item_objective_id:5}
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:4,display:{Name:'{"text":"High class keycard","italic": false}'},facade_highclass_item:1b,objective_item:1b,item_objective_id:6}

#facade_book
execute at @e[tag=facade_book,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with book{CustomModelData:1,display:{Name:'{"text":"CONFIDENTIAL","italic": false}'},facade_book_item:1b,objective_item:1b,item_objective_id:7}

#facade_armory
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:3,display:{Name:'{"text":"Armory keycard","italic": false}'},facade_armory_item:1b,objective_item:1b,item_objective_id:8}
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:3,display:{Name:'{"text":"Armory keycard","italic": false}'},facade_armory_item:1b,objective_item:1b,item_objective_id:9}
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:3,display:{Name:'{"text":"Armory keycard","italic": false}'},facade_armory_item:1b,objective_item:1b,item_objective_id:10}
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:3,display:{Name:'{"text":"Armory keycard","italic": false}'},facade_armory_item:1b,objective_item:1b,item_objective_id:11}
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:3,display:{Name:'{"text":"Armory keycard","italic": false}'},facade_armory_item:1b,objective_item:1b,item_objective_id:12}

execute at @e[tag=armory_ammo_box] run loot insert ~ ~ ~ loot minecraft:blocks/green_shulker_box

scoreboard players set $CompassSelector Statues.DynamicData 0

#> Stop force loading the chunks once the items have generated
forceload remove 54 257 -82 394