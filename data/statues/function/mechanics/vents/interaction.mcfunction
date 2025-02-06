execute unless function statues:feature_flags/check_vents_flags run return fail
execute on target if entity @s[tag=dev_ignore_vent_requirement] run tp @s ~ ~.95 ~
execute on target if entity @s[tag=can_use_vent] run tp @s ~ ~.95 ~
execute if entity @s[tag=vent_always_available] on target run tp @s ~ ~.95 ~
