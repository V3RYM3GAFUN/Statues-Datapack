execute unless function statues:feature_flags/check_blood_trails_flags run return fail

execute if score @s Statues.Survivors matches 16..19 run function statues:mechanics/blood_trails/intensity/low

execute if score @s Statues.Survivors matches 7..15 run function statues:mechanics/blood_trails/intensity/medium

execute if score @s Statues.Survivors matches ..6 run function statues:mechanics/blood_trails/intensity/high