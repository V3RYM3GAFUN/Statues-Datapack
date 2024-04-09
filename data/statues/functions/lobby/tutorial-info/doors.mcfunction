execute unless function statues:feature_flags/check_tutorial_flags run return fail
execute at @e[tag=tutorial_step4] run tp @s ~ ~ ~

give @s iron_ingot{tutorial_key:1b}

tellraw @s ["",{"text":"[Tutorial]","bold":true,"color":"aqua"},"\nLast but not least, sometimes doors will be lucked, indicated by floating red text in front of it. The text in question tells you what you need to do to unlock the door. In this case, you can use your tutorial item on the door to unlock it.\n"]

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1