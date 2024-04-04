scoreboard players set $IntegrityCheckCount Statues.Data 0
scoreboard players set $IntegrityCheckECount Statues.Data 0
execute as @e[tag=facade_genkey] at @s run function statues:ingame/maps/facade/integrity/integrity_self
execute as @e[tag=facade_labkey] at @s run function statues:ingame/maps/facade/integrity/integrity_self
execute as @e[tag=facade_highclasskey] at @s run function statues:ingame/maps/facade/integrity/integrity_self
execute as @e[tag=facade_book] at @s run function statues:ingame/maps/facade/integrity/integrity_self
tellraw @a[team=Dev] [{"color":"green","text":"Integrity results: Total Entity Count: "},{"color":"aqua","score":{"objective": "Statues.Data","name": "$IntegrityCheckECount"}},{"color":"green","text":", Failed Count: "},{"color":"aqua","score":{"objective": "Statues.Data","name": "$IntegrityCheckCount"}}]