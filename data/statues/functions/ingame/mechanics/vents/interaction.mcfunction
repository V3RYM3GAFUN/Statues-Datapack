execute unless function statues:feature_flags/check_vents_flags run return fail
execute on target if entity @s[team=Survivor] run tp @s ~ ~.95 ~
execute on target if entity @s[tag=002] run tp @s ~ ~.95 ~
execute on target if entity @s[tag=dev_ignore_vent_requirement] run tp @s ~ ~.95 ~
execute on target if entity @s[tag=tutorial] run tp @s ~ ~.95 ~
