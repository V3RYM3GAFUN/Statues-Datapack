execute unless function statues:feature_flags/check_doors_2x2_flags run return fail
scoreboard players set $DoorCount Statues.DoorData 0
execute as @e[type=minecraft:armor_stand,tag=door] run scoreboard players add $DoorCount Statues.DoorData 1
execute as @e[type=minecraft:armor_stand,tag=door] at @s run function statues:debug/door2x2_convert
tellraw @a[team=Dev] [{"text":"Updated total ","color":"gold"}, {"score":{"objective":"Statues.DoorData","name":"$DoorCount"},"color":"aqua"}, {"text":" doors.","color":"gold"}]
