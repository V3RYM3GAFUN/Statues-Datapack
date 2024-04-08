execute unless function statues:feature_flags/check_doors_flags run return fail
#> Tick Block Displays

execute as @e[tag=doord_init_open_up] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,0.97f,0f]}}
tag @e[tag=doord_init_open_up] remove doord_init_open_up

execute as @e[tag=doord_init_open_down] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,-0.97f,0f]}}
tag @e[tag=doord_init_open_down] remove doord_init_open_down

execute as @e[tag=doord_init_close] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,0f,0f]}}
tag @e[tag=doord_init_close] remove doord_init_close

#> Tick Doors

execute as @e[tag=door_finished] at @s run kill @e[tag=doord,distance=..1.5]
kill @e[tag=door_finished]

tag @e[tag=door,tag=!door_finished] remove door_req_open
scoreboard players reset @e[tag=door,tag=!door_anim_open,tag=!door_anim_close] Statues.DoorData

execute as @e[tag=door,tag=!door_generated] at @s run function statues:ingame/mechanics/doors/door_create_display
tag @e[tag=door,tag=!door_generated] add door_generated

execute as @e[tag=door,y_rotation=0] at @s align xyz positioned ~ ~ ~-0.5 if entity @a[dx=1,dy=1,dz=1,gamemode=!spectator,limit=1] run tag @s add door_req_open
execute as @e[tag=door,y_rotation=180] at @s align xyz positioned ~ ~ ~-0.5 if entity @a[dx=1,dy=1,dz=1,gamemode=!spectator,limit=1] run tag @s add door_req_open
execute as @e[tag=door,y_rotation=90] at @s align xyz positioned ~-0.5 ~ ~ if entity @a[dx=1,dy=1,dz=1,gamemode=!spectator,limit=1] run tag @s add door_req_open
execute as @e[tag=door,y_rotation=270] at @s align xyz positioned ~-0.5 ~ ~ if entity @a[dx=1,dy=1,dz=1,gamemode=!spectator,limit=1] run tag @s add door_req_open
#> Optimized: Tick players instead of doors (abandoned)
#execute as @a[gamemode=!spectator] at @s align xy positioned ~ ~ ~0.5 run tag @e[dx=-1,dy=-1,dz=-1,tag=door,y_rotation=0] add door_req_open
#execute as @a[gamemode=!spectator] at @s align xy positioned ~ ~ ~0.5 run tag @e[dx=-1,dy=-1,dz=-1,tag=door,y_rotation=180] add door_req_open
#execute as @a[gamemode=!spectator] at @s align xy positioned ~0.5 ~ ~ run tag @e[dx=-1,dy=-1,dz=-1,tag=door,y_rotation=90] add door_req_open
#execute as @a[gamemode=!spectator] at @s align xy positioned ~0.5 ~ ~ run tag @e[dx=-1,dy=-1,dz=-1,tag=door,y_rotation=270] add door_req_open
execute if score $ForceOpen Statues.DoorData matches 1 run tag @e[tag=door] add door_req_open
execute if score $ForceClose Statues.DoorData matches 1 run tag @e[tag=door] remove door_req_open

tag @e[tag=door_req_open,tag=!door_animating] add door_anim_open
execute as @e[tag=door_anim_open,tag=!door_animating] at @s run function statues:ingame/mechanics/doors/door_anim_open
scoreboard players add @e[tag=door_anim_open] Statues.DoorData 1
tag @e[tag=door_anim_open] add door_animating
tag @e[tag=door_anim_open,scores={Statues.DoorData=3..}] add door_opened
scoreboard players reset @e[tag=door_anim_open,scores={Statues.DoorData=3..}] Statues.DoorData

tag @e[tag=door_opened] remove door_anim_open

tag @e[tag=door_opened,tag=!door_req_open] add door_anim_close
tag @e[tag=door_opened,tag=!door_req_open] remove door_opened

execute as @e[tag=door_anim_close] unless entity @s[scores={Statues.DoorData=-2147483648..2147483647}] at @s run function statues:ingame/mechanics/doors/door_anim_close
tag @e[tag=door_anim_close] add door_animating
scoreboard players add @e[tag=door_anim_close] Statues.DoorData 1
tag @e[tag=door_anim_close,scores={Statues.DoorData=3..}] remove door_animating
tag @e[tag=door_anim_close,scores={Statues.DoorData=3..}] remove door_anim_close

execute as @e[type=#minecraft:impact_projectiles] at @s as @e[tag=door,tag=!door_opened,distance=..5] run function statues:ingame/mechanics/doors/tick_arrow

scoreboard players enable @e[team=Dev] check_integrity_doors
execute as @a[team=Dev,scores={check_integrity_doors=1..}] run function statues:ingame/mechanics/doors/integrity
execute as @a[scores={check_integrity_doors=1..}] run scoreboard players reset @s check_integrity_doors