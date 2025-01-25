execute unless function statues:feature_flags/check_vents_flags run return fail
scoreboard players set $IntegrityCheckCount Statues.VentData 0
scoreboard players set $IntegrityCheckECount Statues.VentData 0
execute as @e[tag=vent] at @s run function statues:mechanics/vents/integrity_self with entity @s
tellraw @a[team=Dev] [{"color":"green","text":"Integrity results: Total Entity Count: "},{"color":"aqua","score":{"objective": "Statues.VentData","name": "$IntegrityCheckECount"}},{"color":"green","text":", Failed Count: "},{"color":"aqua","score":{"objective": "Statues.VentData","name": "$IntegrityCheckCount"}}]