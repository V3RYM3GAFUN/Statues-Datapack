execute unless function statues:feature_flags/check_power_doors_flags run return fail
execute store result score $Rotation Statues.DoorData run data get entity @s Rotation[0]
scoreboard players operation $Rotation Statues.DoorData += $45 Statues.Data
scoreboard players operation $Rotation Statues.DoorData /= $90 Statues.Data
scoreboard players operation $Rotation Statues.DoorData += $2 Statues.Data
scoreboard players operation $Rotation Statues.DoorData *= $90 Statues.Data
execute align xyz run summon minecraft:text_display ~.5 ~1.5 ~.5 {Tags:["Power.Objective","new_text"],text:'{"text":"Main Power","color":"#b0160b"}',Rotation:[90f,0f]}
execute store result entity @e[tag=new_text,limit=1] Rotation[0] float 1 run scoreboard players get $Rotation Statues.DoorData
tag @e[tag=new_text] remove new_text