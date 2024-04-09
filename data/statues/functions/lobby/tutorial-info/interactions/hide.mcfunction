execute on target if entity @s[tag=!tutorial] run return fail
execute unless function statues:feature_flags/check_tutorial_flags run return fail
execute on target run tp @s[tag=!hidden] ~ ~.75 ~
execute on target run tag @s[tag=!hidden] add hidden
