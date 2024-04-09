execute unless function statues:feature_flags/check_tutorial_flags run return fail
tag @s add tutorial

execute at @e[tag=tutorial_start] run tp @s ~ ~ ~

tellraw @s ["",{"text":"[Tutorial]","bold":true,"color":"aqua"},"\nWelcome to the \"Statues.\" tutorial! Here you will learn the basic mechanics of the game.\n"]

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1