tag @s add tutorial

execute at @e[tag=tutorial_start] run tp @s ~ ~ ~

tellraw @s ["",{"text":"[Tutorial]","bold":true,"color":"aqua"},"\nWelcome to the \"Statues.\" tutorial! Here you will learn the basic mechanics of the game.\n",{"text":"[Press me to continue]","clickEvent":{"action":"run_command","value":"/function statues:lobby/tutorial-info/hiding"},"color":"green"}]