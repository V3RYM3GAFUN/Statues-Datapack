execute unless function statues:feature_flags/check_class_preview_flags run return fail

tag @s remove cloaker
tag @s remove medic
tag @s remove juggernaut
tag @s remove runner
tag @s remove shotgunner
tag @s remove gunner
tag @s remove brawler
tag @s remove marksman
tag @s remove trapper

tag @s remove 002

function statues:warps/newlobby
effect clear @s
clear @s

tag @s remove class_tutorial
tag @s remove class_selected

attribute @s minecraft:knockback_resistance base reset