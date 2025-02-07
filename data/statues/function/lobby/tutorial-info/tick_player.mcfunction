execute unless function statues:feature_flags/check_tutorial_flags run return fail

#> Prevent duplicates
execute store result score $TutorialKey Statues.ItemCount run clear @s iron_ingot[custom_data={tutorial_key:1b}] 0
execute if score $TutorialKey Statues.ItemCount matches 2.. run clear @s iron_ingot[custom_data={tutorial_key:1b}]
execute if score $TutorialKey Statues.ItemCount matches 2.. run give @s iron_ingot[item_name='[{"translate":"statues.tutorial.key","italic":false}]',custom_model_data={strings:["key_v2"]},custom_data={tutorial_key:1b}]
#> tags : [tutorial_step1] [tutorial_step2] [tutorial_step3] [tutorial_step4]