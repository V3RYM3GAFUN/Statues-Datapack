execute unless function statues:feature_flags/check_flashlight_flags run return fail

execute as @a[tag=!dev_ignore_flashlight,tag=!marksman,team=!Monster] at @s unless predicate statues:holding_flashlight run function statues:mechanics/flashlight_alt/unequip

execute as @a[tag=!dev_ignore_flashlight,tag=!marksman,team=!Monster] at @s if predicate statues:holding_flashlight if score $Lights Statues.DynamicData matches 0 run function statues:mechanics/flashlight_alt/use

execute as @a[tag=!dev_ignore_flashlight,tag=!marksman,team=!Monster] if score $Lights Statues.DynamicData matches 1 run function statues:mechanics/flashlight_alt/unequip