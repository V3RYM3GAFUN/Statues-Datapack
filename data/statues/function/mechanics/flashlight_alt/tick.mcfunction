execute unless function statues:feature_flags/check_flashlight_flags run return fail

execute as @a[tag=!dev_ignore_flashlight,tag=!marksman] at @s unless predicate statues:holding_flashlight run function statues:mechanics/flashlight_alt/unequip

execute as @a[tag=!dev_ignore_flashlight] at @s if predicate statues:holding_flashlight run function statues:mechanics/flashlight_alt/use