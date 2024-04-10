scoreboard players add $IntegrityCheckECount Statues.TempData 1
scoreboard players set $IntegrityCheck Statues.TempData 0

execute unless block ~ ~ ~ minecraft:barrel run scoreboard players add $IntegrityCheck Statues.TempData 1

data modify storage statues:data facade_integrity.x set from entity @s Pos[0]
data modify storage statues:data facade_integrity.y set from entity @s Pos[1]
data modify storage statues:data facade_integrity.z set from entity @s Pos[2]

execute if score $IntegrityCheck Statues.TempData matches 1 run function statues:ingame/maps/facade/integrity/integrity_error_message_macro with storage statues:data facade_integrity
execute if score $IntegrityCheck Statues.TempData matches 1 run scoreboard players add $IntegrityCheckCount Statues.TempData 1