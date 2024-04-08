scoreboard players set $Objective Statues.Data 0

time set 8000
weather clear

tp @a[team=Monster] -29.5 -56 324.5 -90 0

scoreboard players set $MonsterSpawnDelay Statues.Data 1800
tellraw @a {"text": "90 seconds grace period for survivors.","bold": true,"color": "aqua"}

tp @a[team=Survivor] 44.5 -56 322 90 0
tag @a[team=Survivor] add has_compass_tracker

#> Set the Core heartbeat timer
scoreboard players set $Core.Ticks Statues.Data 20

#> List of tags for generating objective items:

#facade_genkey
execute at @e[tag=facade_genkey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:1,display:{Name:'{"text":"Emergency Generator Key","italic": false}'},facade_genkey_item:1b,objective_item:1b}

#facade_labkey
execute at @e[tag=facade_labkey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:2,display:{Name:'{"text":"Lab access keycard","italic": false}'},facade_labkey_item:1b,objective_item:1b}

#facade_highclasskey
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:4,display:{Name:'{"text":"High class keycard","italic": false}'},facade_highclass_item:1b,objective_item:1b}
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:4,display:{Name:'{"text":"High class keycard","italic": false}'},facade_highclass_item:1b,objective_item:1b}
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:4,display:{Name:'{"text":"High class keycard","italic": false}'},facade_highclass_item:1b,objective_item:1b}

#facade_book
execute at @e[tag=facade_book,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with book{CustomModelData:1,display:{Name:'{"text":"CONFIDENTIAL","italic": false}'},facade_book_item:1b,objective_item:1b}

scoreboard players set $CompassSelector Statues.Data 0

#> Stop force loading the chunks once the items have generated
forceload remove 54 257 -82 394