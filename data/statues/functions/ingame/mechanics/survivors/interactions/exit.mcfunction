execute on target if entity @s[tag=tutorial] run return fail
execute unless function statues:feature_flags/check_hiding_flags run return fail
execute on target if entity @s[team=!Survivor] run return fail
execute on target run tp @s[tag=hidden] ~ ~3.5 ~
execute on target run effect clear @s[tag=hidden] blindness
execute on target run tag @s[tag=hidden] remove hidden
