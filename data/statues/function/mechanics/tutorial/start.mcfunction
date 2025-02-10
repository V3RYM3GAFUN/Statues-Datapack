execute unless function statues:feature_flags/check_tutorial_flags run return fail
tag @s add tutorial

tp @s @e[tag=tutorial_start,limit=1]

tellraw @s ""
tellraw @s [{"translate":"statues.tutorial.title","bold":true,"color":"aqua"}]
tellraw @s [{"translate":"statues.tutorial.start","with":[[{"translate":"statues.tutorial.start.statues","bold":true}]]}]
tellraw @s ""

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
