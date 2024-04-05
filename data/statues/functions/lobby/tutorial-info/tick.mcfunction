## hiding mechanic
execute as @a[tag=!hidden] at @s run scoreboard players set @s Statues.Heartbeat 25
execute as @a[tag=hidden] at @s run effect give @s blindness 2 0 true

execute as @e[type=minecraft:interaction,tag=hide] at @s on target run tp @s[tag=!hidden,tag=tutorial] ~ ~.75 ~
execute as @e[type=minecraft:interaction,tag=hide] at @s on target run tag @s[tag=tutorial,tag=!hidden] add hidden
execute as @e[type=minecraft:interaction,tag=hide] run data remove entity @s interaction
execute as @a[tag=hidden] at @s run scoreboard players remove @s Statues.Heartbeat 1

execute as @e[type=minecraft:interaction,tag=exit] at @s on target run tp @s[tag=hidden] ~ ~2.15 ~
execute as @e[type=minecraft:interaction,tag=exit] at @s on target run tag @s[tag=hidden] remove hidden
execute as @e[type=minecraft:interaction,tag=exit] run data remove entity @s interaction

execute as @e[tag=tutorial_button] on target at @s run function statues:lobby/tutorial-info/buttontp
execute as @e[tag=tutorial_button] run data remove entity @s interaction

execute as @e[tag=tutorial_door] on target if predicate statues:holding_tutorial_key at @s run function statues:lobby/tutorial-info/doortp
execute as @e[tag=tutorial_door] run data remove entity @s interaction

#> Prevent duplicates
execute as @a[tag=tutorial] store result score $TutorialKey Statues.ItemCount run clear @s iron_ingot 0
execute as @a[tag=tutorial] if score $TutorialKey Statues.ItemCount matches 2.. run clear @s iron_ingot

#> tags : [tutorial_step2] [tutorial_step2] [tutorial_step3] [tutorial_step4]