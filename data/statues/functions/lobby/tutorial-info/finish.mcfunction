execute unless function statues:feature_flags/check_tutorial_flags run return fail
clear @s
function statues:warps/newlobby
tag @s remove tutorial

title @s title [{"translate":"statues.tutorial.finish","color":"aqua"}]

execute at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 2