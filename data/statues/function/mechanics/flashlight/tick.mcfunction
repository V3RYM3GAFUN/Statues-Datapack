execute unless function statues:feature_flags/check_flashlight_flags run return fail
execute at @a[x=0] as @e[tag=flashlight_source,type=marker,distance=..10] at @s run function statues:mechanics/flashlight/destroy
execute as @a[x=0] at @s if predicate statues:holding_flashlight run function statues:mechanics/flashlight/spawn
