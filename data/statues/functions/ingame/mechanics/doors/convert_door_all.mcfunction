scoreboard players set $DoorCount Statues.DoorData 0
execute as @e[type=minecraft:armor_stand,tag=door] run scoreboard players add $DoorCount Statues.DoorData 1
execute as @e[type=minecraft:armor_stand,tag=door] at @s run function statues:ingame/mechanics/doors/convert_door
tellraw @a[team=Dev] [{"text":"Updated total ","color":"gold"}, {"score":{"objective":"Statues.DoorData","name":"$DoorCount"},"color":"aqua"}, {"text":" doors.","color":"gold"}]
