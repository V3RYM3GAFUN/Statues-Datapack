tag @e[tag=door_conv_selected] remove door_conv_selected
tag @e[tag=door_conv_new] remove door_conv_new

execute as @e[type=armor_stand,sort=nearest,limit=1,distance=..5] run tag @s add door_conv_selected

execute as @e[tag=door_conv_selected] at @s run kill @e[distance=..1.5,tag=doord]

execute as @e[tag=door_conv_selected] at @s run summon marker ~ ~ ~ {Tags:["door","door_conv_new"]}
execute as @e[tag=door_conv_selected] run data modify entity @e[tag=door_conv_new,limit=1] Rotation set from entity @s Rotation
execute as @e[tag=door_conv_selected] run kill @s
tag @e[tag=door_conv_new] remove door_conv_new
