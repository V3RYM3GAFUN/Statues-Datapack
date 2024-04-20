execute unless function statues:feature_flags/check_vents_flags run return fail

scoreboard players enable @a[team=Dev] check_integrity_vents
execute as @a[team=Dev,scores={check_integrity_vents=1..}] run function statues:ingame/mechanics/vents/integrity
execute as @a[scores={check_integrity_vents=1..}] run scoreboard players reset @s check_integrity_vents