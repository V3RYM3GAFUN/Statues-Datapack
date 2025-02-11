execute unless function statues:feature_flags/check_flashlight_flags run return fail
kill @s[tag=flashlight_source]
execute if block ~ ~ ~ light[level=10] run setblock ~ ~ ~ air