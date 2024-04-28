execute align xyz as @e[type=marker] unless entity @s[tag=!facade_genkey,tag=!facade_labkey,tag=!facade_highclasskey,tag=!facade_book] run tag @s add facade_keyloc

scoreboard players set $IntegrityCheckCount Statues.TempData 0
scoreboard players set $IntegrityCheckECount Statues.TempData 0
execute as @e[tag=facade_genkey] at @s run function statues:ingame/maps/facade/integrity/integrity_self
execute as @e[tag=facade_labkey] at @s run function statues:ingame/maps/facade/integrity/integrity_self
execute as @e[tag=facade_highclasskey] at @s run function statues:ingame/maps/facade/integrity/integrity_self
execute as @e[tag=facade_book] at @s run function statues:ingame/maps/facade/integrity/integrity_self
tag @a[team=Dev] add integrity_show
tag @s add integrity_show
tellraw @a[tag=integrity_show] [{"color":"green","text":"Integrity results: Total Entity Count: "},{"color":"aqua","score":{"objective": "Statues.TempData","name": "$IntegrityCheckECount"}},{"color":"green","text":", Failed Count: "},{"color":"aqua","score":{"objective": "Statues.TempData","name": "$IntegrityCheckCount"}}]
tag @a[tag=integrity_show] remove integrity_show

tag @e[tag=facade_keyloc] remove facade_keyloc