execute unless function statues:feature_flags/check_tutorial_flags run return fail
execute at @e[tag=tutorial_step2] run tp @s ~ ~ ~

tellraw @s ""
tellraw @s [{"translate":"statues.tutorial.title","bold":true,"color":"aqua"}]
tellraw @s [{"translate":"statues.tutorial.step2.line1"}]
tellraw @s [{"translate":"statues.tutorial.step2.line2","with":[[{"translate":"statues.tutorial.step2.line2.lime","color":"#55AA00"}]]}]
tellraw @s ""

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
