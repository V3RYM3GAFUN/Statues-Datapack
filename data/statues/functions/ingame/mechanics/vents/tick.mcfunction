execute unless function statues:feature_flags/check_vents_flags run return fail
execute as @e[tag=vent] at @s on target if entity @s[team=Survivor] run tp @s ~ ~.95 ~
execute as @e[tag=vent] at @s on target if entity @s[tag=002] run tp @s ~ ~.95 ~
execute as @e[tag=vent] at @s on target if entity @s[tag=dev_ignore_vent_requirement] run tp @s ~ ~.95 ~
execute as @e[type=minecraft:interaction,tag=vent] run data remove entity @s interaction

scoreboard players enable @e[team=Dev] check_integrity_vents
execute as @a[team=Dev,scores={check_integrity_vents=1..}] run function statues:ingame/mechanics/vents/integrity
execute as @a[scores={check_integrity_vents=1..}] run scoreboard players reset @s check_integrity_vents