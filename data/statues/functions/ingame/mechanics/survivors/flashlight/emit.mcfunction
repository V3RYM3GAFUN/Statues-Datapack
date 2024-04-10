execute unless function statues:feature_flags/check_flashlight_flags run return fail
fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace light[level=10]

execute if block ~ ~1 ~ air run setblock ~ ~1 ~ light[level=10] keep
