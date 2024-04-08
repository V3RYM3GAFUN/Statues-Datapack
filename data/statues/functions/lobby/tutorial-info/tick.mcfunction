## hiding mechanic
execute as @a[tag=hidden] at @s run effect give @s blindness 2 0 true


#> Prevent duplicates
execute as @a[tag=tutorial] store result score $TutorialKey Statues.ItemCount run clear @s iron_ingot 0
execute as @a[tag=tutorial] if score $TutorialKey Statues.ItemCount matches 2.. run clear @s iron_ingot

#> tags : [tutorial_step2] [tutorial_step2] [tutorial_step3] [tutorial_step4]