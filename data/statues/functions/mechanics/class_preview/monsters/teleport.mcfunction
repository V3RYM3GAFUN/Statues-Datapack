execute unless function statues:feature_flags/check_class_preview_flags run return fail

tag @s add monster_tutorial
execute at @e[tag=lobby_monster_tutorial] run tp @s ~ ~ ~ 0 0

effect give @s weakness infinite 0 true