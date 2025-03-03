execute unless function statues:feature_flags/check_flashlight_flags run return fail

execute as @a at @s unless predicate statues:holding_flashlight run function statues:mechanics/flashlight_alt/unequip

execute as @a at @s if predicate statues:holding_flashlight run function statues:mechanics/flashlight_alt/use