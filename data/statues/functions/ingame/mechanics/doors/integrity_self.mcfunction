execute unless function statues:feature_flags/check_doors_flags run return fail
scoreboard players add $IntegrityCheckECount Statues.DoorData 1
scoreboard players set $IntegrityCheck Statues.DoorData 0

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.8,tag=doord] run scoreboard players add $IntegrityCheck Statues.DoorData 1
execute store result score $IntegrityCheckX Statues.DoorData run data get entity @s Pos[0]
execute store result score $IntegrityCheckY Statues.DoorData run data get entity @s Pos[1]
execute store result score $IntegrityCheckZ Statues.DoorData run data get entity @s Pos[2]

execute unless score $IntegrityCheck Statues.DoorData matches 4 run tellraw @a[team=Dev] [{"color":"red","text":"Integrity failed at "},{"color":"gold","text":"["},{"color":"aqua","score":{"objective": "Statues.DoorData","name": "$IntegrityCheckX"}},{"color":"gold","text":","},{"color":"aqua","score":{"objective": "Statues.DoorData","name": "$IntegrityCheckY"}},{"color":"gold","text":","},{"color":"aqua","score":{"objective": "Statues.DoorData","name": "$IntegrityCheckZ"}},{"color":"gold","text":"]"},{"color":"red","text":", found "},{"color":"aqua","score":{"objective": "Statues.DoorData","name": "$IntegrityCheck"}},{"color":"red","text":" displays."}]
execute unless score $IntegrityCheck Statues.DoorData matches 4 run scoreboard players add $IntegrityCheckCount Statues.DoorData 1