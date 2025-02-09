execute unless function statues:feature_flags/check_flashlight_flags run return fail
execute as @e[tag=flashlight_source] at @s run function statues:mechanics/flashlight/destroy
execute as @a at @s if predicate statues:holding_flashlight run function statues:mechanics/flashlight/spawn
