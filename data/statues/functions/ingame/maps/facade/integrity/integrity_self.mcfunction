scoreboard players add $IntegrityCheckECount Statues.TempData 1
scoreboard players set $IntegrityCheck Statues.TempData 0

tag @s add failed_integrity


execute unless block ~ ~ ~ minecraft:barrel run scoreboard players add $IntegrityCheck Statues.TempData 1

data modify storage statues:data facade_integrity.x set from entity @s Pos[0]
data modify storage statues:data facade_integrity.y set from entity @s Pos[1]
data modify storage statues:data facade_integrity.z set from entity @s Pos[2]
data modify storage statues:data facade_integrity.message set value "barrel not found"

execute if score $IntegrityCheck Statues.TempData matches 1 run function statues:ingame/maps/facade/integrity/integrity_error_message_macro with storage statues:data facade_integrity
execute if score $IntegrityCheck Statues.TempData matches 1 run tag @s add failed_integrity


scoreboard players set $IntegrityCheck Statues.TempData 0

execute store result score $IntegrityCheck Statues.TempData align xyz if entity @e[dx=0,dy=0,dz=0,tag=facade_keyloc]

data modify storage statues:data facade_integrity.x set from entity @s Pos[0]
data modify storage statues:data facade_integrity.y set from entity @s Pos[1]
data modify storage statues:data facade_integrity.z set from entity @s Pos[2]
data modify storage statues:data facade_integrity.message set value "duplicate markers in the same place"

execute if score $IntegrityCheck Statues.TempData matches 2.. run function statues:ingame/maps/facade/integrity/integrity_error_message_macro with storage statues:data facade_integrity
execute if score $IntegrityCheck Statues.TempData matches 2.. run tag @s add failed_integrity


execute if entity @s[tag=failed_integrity] run scoreboard players add $IntegrityCheckCount Statues.TempData 1
tag @s remove failed_integrity