execute unless function statues:feature_flags/check_tutorial_flags run return fail

#> Prevent duplicates
execute store result score $TutorialKey Statues.ItemCount run clear @s iron_ingot{tutorial_key:1b} 0
execute if score $TutorialKey Statues.ItemCount matches 2.. run clear @s iron_ingot{tutorial_key:1b}
execute if score $TutorialKey Statues.ItemCount matches 2.. run give @s iron_ingot{tutorial_key:1b,CustomModelData:1,display:{Name:'[{"text":"Tutorial Key","italic":false}]'}}

#> tags : [tutorial_step1] [tutorial_step2] [tutorial_step3] [tutorial_step4]