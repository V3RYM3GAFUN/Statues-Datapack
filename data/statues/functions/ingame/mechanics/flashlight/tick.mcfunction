execute unless function statues:feature_flags/check_flashlight_flags run return fail
execute as @e[tag=flashlight_source] at @s run function statues:ingame/mechanics/flashlight/destroy
execute unless score flashlight_next Statues.FeatureFlags matches 1.. as @a at @s if predicate statues:holding_flashlight run function statues:ingame/mechanics/flashlight/spawn
execute if score flashlight_next Statues.FeatureFlags matches 1.. as @a at @s unless predicate statues:holding_flashlight run function statues:ingame/mechanics/flashlight/next/force_off
execute if score flashlight_next Statues.FeatureFlags matches 1.. as @a at @s if predicate statues:holding_flashlight run function statues:ingame/mechanics/flashlight/next/new
