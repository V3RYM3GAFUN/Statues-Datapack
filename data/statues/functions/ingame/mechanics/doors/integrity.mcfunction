execute as @e[tag=doord] at @s unless loaded ~ ~ ~ run tag @s add doord_alive
execute as @e[tag=doord] at @s unless loaded ~-16 ~ ~ run tag @s add doord_alive
execute as @e[tag=doord] at @s unless loaded ~16 ~ ~ run tag @s add doord_alive
execute as @e[tag=doord] at @s unless loaded ~ ~ ~-16 run tag @s add doord_alive
execute as @e[tag=doord] at @s unless loaded ~ ~ ~16 run tag @s add doord_alive

scoreboard players set $IntegrityCheckAbandonedDisplayCount Statues.DoorData 0
execute as @e[tag=door] at @s run tag @e[distance=..1.5,tag=doord] add doord_alive
execute as @e[tag=doord,tag=!doord_alive] run scoreboard players add $IntegrityCheckAbandonedDisplayCount Statues.DoorData 1
kill @e[tag=doord,tag=!doord_alive]
tag @e[tag=doord_alive] remove doord_alive

execute unless function statues:feature_flags/check_doors_flags run return fail
scoreboard players set $IntegrityCheckCount Statues.DoorData 0
scoreboard players set $IntegrityCheckECount Statues.DoorData 0
execute as @e[tag=door] at @s run function statues:ingame/mechanics/doors/integrity_self
tellraw @a[team=Dev] [{"color":"green","text":"Integrity results: Total Entity Count: "},{"color":"aqua","score":{"objective": "Statues.DoorData","name": "$IntegrityCheckECount"}},{"color":"green","text":", Failed Count: "},{"color":"aqua","score":{"objective": "Statues.DoorData","name": "$IntegrityCheckCount"}},{"color":"green","text":", Destroyed Block Displayed Count: "},{"color":"aqua","score":{"objective": "Statues.DoorData","name": "$IntegrityCheckAbandonedDisplayCount"}}]