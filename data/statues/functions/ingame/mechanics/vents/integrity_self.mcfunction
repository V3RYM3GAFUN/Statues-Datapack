execute unless function statues:feature_flags/check_vents_flags run return fail
scoreboard players add $IntegrityCheckECount Statues.VentData 1
scoreboard players set $IntegrityCheckStairs Statues.VentData 0

execute unless block ~ ~2 ~ #minecraft:stairs run scoreboard players add $IntegrityCheckStairs Statues.VentData 1

data modify storage statues:data stairs_integrity.x set from entity @s Pos[0]
data modify storage statues:data stairs_integrity.y set from entity @s Pos[1]
data modify storage statues:data stairs_integrity.z set from entity @s Pos[2]

execute if score $IntegrityCheckStairs Statues.VentData matches 1 run function statues:ingame/mechanics/vents/integrity_error_message_stairs_macro with storage statues:data stairs_integrity
execute if score $IntegrityCheckStairs Statues.VentData matches 1 run scoreboard players add $IntegrityCheckCount Statues.VentData 1