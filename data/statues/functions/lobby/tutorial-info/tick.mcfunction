execute unless function statues:feature_flags/check_tutorial_flags run return fail

#> Prevent duplicates
execute if entity @s[tag=tutorial] store result score $TutorialKey Statues.ItemCount run clear @s iron_ingot 0
execute if entity @s[tag=tutorial] if score $TutorialKey Statues.ItemCount matches 2.. run clear @s iron_ingot

#> tags : [tutorial_step2] [tutorial_step2] [tutorial_step3] [tutorial_step4]