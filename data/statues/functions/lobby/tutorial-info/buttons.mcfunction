execute unless function statues:feature_flags/check_tutorial_flags run return fail
tp @s @e[tag=tutorial_step3,limit=1]

clear @s[tag=tutorial] iron_ingot{tutorial_key:1b}

tellraw @s ""
tellraw @s [{"translate":"statues.tutorial.title","bold":true,"color":"aqua"}]
tellraw @s [{"translate":"statues.tutorial.step3","with":[[{"translate":"statues.tutorial.step3.crimson","color":"#773355"}],[{"translate":"statues.tutorial.step3.warped","color":"#007777"}]]}]
tellraw @s ""

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
