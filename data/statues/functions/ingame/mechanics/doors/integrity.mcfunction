scoreboard players set $IntegrityCheckCount Statues.DoorData 0
scoreboard players set $IntegrityCheckECount Statues.DoorData 0
execute as @e[tag=door] at @s run function statues:ingame/mechanics/doors/integrity_self
tellraw @a[team=Dev] [{"color":"green","text":"Integrity results: Total Entity Count: "},{"color":"aqua","score":{"objective": "Statues.DoorData","name": "$IntegrityCheckECount"}},{"color":"green","text":", Failed Count: "},{"color":"aqua","score":{"objective": "Statues.DoorData","name": "$IntegrityCheckCount"}}]