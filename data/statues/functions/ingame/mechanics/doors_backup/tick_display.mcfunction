scoreboard players add @s Statues.DoorData 1
execute if score @s Statues.DoorData matches 4.. run kill @s

execute if entity @s[tag=doord_init_open] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,-3f,0f]}}
execute if entity @s[tag=doord_init_open] run tag @s remove doord_init_open

execute if entity @s[tag=doord_init_close] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,0f,0f]}}
execute if entity @s[tag=doord_init_close] run tag @s remove doord_init_close