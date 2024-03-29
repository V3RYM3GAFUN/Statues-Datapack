scoreboard players set $DoorCount Statues.Data 0
execute as @e[type=minecraft:armor_stand,tag=door] run scoreboard players add $DoorCount Statues.Data 1
execute as @e[type=minecraft:armor_stand,tag=door] at @s run function statues:ingame/mechanics/doors/convert_door
tellraw @a [{"text":"Updated total ","color":"gold"}, {"score":{"objective":"Statues.Data","name":"$DoorCount"},"color":"aqua"}, {"text":" doors.","color":"gold"}]
