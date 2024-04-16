execute unless function statues:feature_flags/check_tutorial_flags run return fail
execute at @e[tag=tutorial_step1] run tp @s ~ ~ ~

tellraw @s ""
tellraw @s [{"translate":"statues.tutorial.title","bold":true,"color":"aqua"}]
tellraw @s [{"translate":"statues.tutorial.step1.line1"}]
tellraw @s [{"translate":"statues.tutorial.step1.line2","with":[[{"translate":"statues.tutorial.step1.line2.warped","color":"#007777"}],[{"translate":"statues.tutorial.step1.line2.crimson","color":"#773355"}]]}]
tellraw @s ""

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
