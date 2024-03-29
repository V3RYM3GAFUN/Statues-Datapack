scoreboard players add $IntegrityCheckECount Statues.VentData 1
scoreboard players set $IntegrityCheckStairs Statues.VentData 0

execute unless block ~ ~2 ~ minecraft:polished_andesite_stairs run scoreboard players add $IntegrityCheckStairs Statues.VentData 1
execute store result score $IntegrityCheckX Statues.VentData run data get entity @s Pos[0]
execute store result score $IntegrityCheckY Statues.VentData run data get entity @s Pos[1]
execute store result score $IntegrityCheckZ Statues.VentData run data get entity @s Pos[2]

execute if score $IntegrityCheckStairs Statues.VentData matches 1 run tellraw @a [{"color":"red","text":"Integrity failed at "},{"color":"gold","text":"["},{"color":"aqua","score":{"objective": "Statues.VentData","name": "$IntegrityCheckX"}},{"color":"gold","text":","},{"color":"aqua","score":{"objective": "Statues.VentData","name": "$IntegrityCheckY"}},{"color":"gold","text":","},{"color":"aqua","score":{"objective": "Statues.VentData","name": "$IntegrityCheckZ"}},{"color":"gold","text":"]"},{"color":"red","text":", stairs not found above vent"}]
execute if score $IntegrityCheckStairs Statues.VentData matches 1 run scoreboard players add $IntegrityCheckCount Statues.VentData 1