#> Tick Block Displays

execute as @e[tag=doord_init_open] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,-2f,0f]}}
tag @e[tag=doord_init_open] remove doord_init_open

execute as @e[tag=doord_init_close] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,0f,0f]}}
tag @e[tag=doord_init_close] remove doord_init_close

execute as @e[tag=doord] at @s unless entity @e[distance=..2,tag=door] run kill @s

#> Tick Doors

tag @e[tag=door,tag=!door_finished] remove door_req_open
tag @e[tag=door,tag=!door_finished] remove door_req_close
execute if entity @e[tag=door,tag=!door_anim_open,tag=!door_anim_close] run scoreboard players reset @s Statues.DoorData

execute as @e[tag=door,tag=!door_generated] at @s run function statues:ingame/mechanics/doors/door_create_display
tag @e[tag=door,tag=!door_generated] add door_generated

tag @e[tag=door] add door_req_close

execute as @e[tag=door] at @s if entity @s[y_rotation=0] align xyz positioned ~ ~ ~-1 if entity @a[dx=2,dy=2,dz=3] run tag @s add door_req_open
execute as @e[tag=door] at @s if entity @s[y_rotation=180] align xyz positioned ~ ~ ~-1 if entity @a[dx=2,dy=2,dz=3] run tag @s add door_req_open
execute as @e[tag=door] at @s if entity @s[y_rotation=90] align xyz positioned ~-1 ~ ~ if entity @a[dx=3,dy=2,dz=2] run tag @s add door_req_open
execute as @e[tag=door] at @s if entity @s[y_rotation=270] align xyz positioned ~-1 ~ ~ if entity @a[dx=3,dy=2,dz=2] run tag @s add door_req_open

tag @s[tag=door_req_open] remove door_req_close

execute as @e[tag=door] at @s run function statues:ingame/mechanics/doors/tick_door