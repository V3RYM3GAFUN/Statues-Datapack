execute unless function statues:feature_flags/check_doors_2x2_flags run return fail
#> Tick Block Displays

execute at @s as @e[tag=doord_init,type=minecraft:block_display,distance=..2] run function statues:mechanics/doors_2x2/doord_tick_init

#> Tick Doors

execute as @s[tag=door_finished] at @s run kill @e[tag=doord,distance=..1.5]
kill @s[tag=door_finished]

tag @s[tag=door,tag=!door_finished] remove door_req_open
scoreboard players reset @s[tag=door,tag=!door_anim_open,tag=!door_anim_close] Statues.DoorData

execute as @s[tag=door,tag=!door_generated] at @s run function statues:mechanics/doors_2x2/door_create_display
tag @s[tag=door,tag=!door_generated] add door_generated

execute as @s[tag=door,y_rotation=180..270] at @s run tp @s ~ ~ ~ ~-180 ~
execute as @s[tag=door,y_rotation=0] at @s align xyz positioned ~ ~ ~-0.5 if entity @a[dx=1,dy=1,dz=1,gamemode=!spectator,limit=1] run tag @s add door_req_open
execute as @s[tag=door,y_rotation=90] at @s align xyz positioned ~-0.5 ~ ~ if entity @a[dx=1,dy=1,dz=1,gamemode=!spectator,limit=1] run tag @s add door_req_open

execute if score $ForceOpen Statues.DoorData matches 1 run tag @s[tag=door] add door_req_open
execute if score $ForceClose Statues.DoorData matches 1 run tag @s[tag=door] remove door_req_open

tag @s[tag=door_req_open,tag=!door_animating] add door_anim_open
execute at @s as @e[tag=door_anim_open,tag=!door_animating,distance=..2] at @s run function statues:mechanics/doors_2x2/door_anim_open
scoreboard players add @s[tag=door_anim_open] Statues.DoorData 1
tag @s[tag=door_anim_open] add door_animating
tag @s[tag=door_anim_open,scores={Statues.DoorData=3..}] add door_opened
scoreboard players reset @s[tag=door_anim_open,scores={Statues.DoorData=3..}] Statues.DoorData

tag @s[tag=door_opened] remove door_anim_open

tag @s[tag=door_opened,tag=!door_req_open] add door_anim_close
tag @s[tag=door_opened,tag=!door_req_open] remove door_opened

execute at @s as @e[tag=door_anim_close,distance=..2] unless entity @s[scores={Statues.DoorData=-2147483648..2147483647}] at @s run function statues:mechanics/doors_2x2/door_anim_close
tag @s[tag=door_anim_close] add door_animating
scoreboard players add @s[tag=door_anim_close] Statues.DoorData 1
tag @s[tag=door_anim_close,scores={Statues.DoorData=3..}] remove door_animating
tag @s[tag=door_anim_close,scores={Statues.DoorData=3..}] remove door_anim_close

scoreboard players enable @a[team=Dev] check_integrity_doors
execute as @a[team=Dev,scores={check_integrity_doors=1..}] run function statues:mechanics/doors_2x2/integrity
execute as @a[scores={check_integrity_doors=1..}] run scoreboard players reset @s check_integrity_doors