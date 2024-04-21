execute unless function statues:feature_flags/check_tutorial_flags run return fail
tp @s ~-8 ~ ~

execute at @s run playsound minecraft:block.vault.insert_item master @s ~ ~ ~ 1 1.5

clear @s iron_ingot{tutorial_key:1b}
