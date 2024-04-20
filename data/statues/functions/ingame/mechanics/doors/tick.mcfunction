execute unless function statues:feature_flags/check_doors_2x2_flags run return fail
#> Tick Block Displays

execute as @e[tag=doord_init,type=minecraft:block_display] run function statues:ingame/mechanics/doors/doord_tick_init

#> Tick Doors

execute as @e[tag=door_finished] at @s run kill @e[tag=doord,distance=..1.5]
kill @e[tag=door_finished]

tag @e[tag=door,tag=!door_finished] remove door_req_open
scoreboard players reset @e[tag=door,tag=!door_anim_open,tag=!door_anim_close] Statues.DoorData

execute as @e[tag=door,tag=!door_generated] at @s run function statues:ingame/mechanics/doors/door_create_display
tag @e[tag=door,tag=!door_generated] add door_generated

execute as @e[tag=door,y_rotation=180..270] at @s run tp @s ~ ~ ~ ~-180 ~
execute as @e[tag=door,y_rotation=0] at @s align xyz positioned ~ ~ ~-0.5 if entity @a[dx=1,dy=1,dz=1,gamemode=!spectator,limit=1] run tag @s add door_req_open
execute as @e[tag=door,y_rotation=90] at @s align xyz positioned ~-0.5 ~ ~ if entity @a[dx=1,dy=1,dz=1,gamemode=!spectator,limit=1] run tag @s add door_req_open

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

#execute as @e[type=#minecraft:impact_projectiles] at @s as @e[tag=door,tag=!door_opened,distance=..5] run function statues:ingame/mechanics/doors/tick_arrow

scoreboard players enable @a[team=Dev] check_integrity_doors
execute as @a[team=Dev,scores={check_integrity_doors=1..}] run function statues:ingame/mechanics/doors/integrity
execute as @a[scores={check_integrity_doors=1..}] run scoreboard players reset @s check_integrity_doors