execute unless function statues:feature_flags/check_tutorial_flags run return fail
execute at @e[tag=tutorial_step4] run tp @s ~ ~ ~

clear @s
give @s iron_ingot{tutorial_key:1b,display:{Name:'[{"text":"Tutorial Key","italic":false}]'},CustomModelData:1}

tellraw @s ""
tellraw @s [{"translate":"statues.tutorial.title","bold":true,"color":"aqua"}]
tellraw @s [{"translate":"statues.tutorial.step4","with":[[{"translate":"statues.tutorial.step4.red","color":"red"}]]}]
tellraw @s ""

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
