execute unless function statues:feature_flags/check_flashlight_flags run return fail

execute if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["flashlight_source"]}
execute if block ~ ~ ~ air run setblock ~ ~ ~ light[level=10]
