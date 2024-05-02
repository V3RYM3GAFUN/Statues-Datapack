execute unless function statues:feature_flags/check_flashlight_flags run return fail
execute as @e[tag=flashlight_source] at @s run function statues:mechanics/flashlight/destroy
execute unless score experimental_flashlight Statues.FeatureFlags matches 1.. as @a at @s if predicate statues:holding_flashlight run function statues:mechanics/flashlight/spawn
execute if score experimental_flashlight Statues.FeatureFlags matches 1.. as @a at @s unless predicate statues:holding_flashlight run function statues:mechanics/flashlight/next/force_off
execute if score experimental_flashlight Statues.FeatureFlags matches 1.. as @a at @s if predicate statues:holding_flashlight run function statues:mechanics/flashlight/next/new
