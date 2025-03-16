execute unless function statues:feature_flags/check_blood_trails_flags run return fail

execute if entity @s[team=Survivor] run function statues:mechanics/blood_trails/survivor_tick

execute if score @s Statues.SurvivorTrail matches 0 align y run summon marker ~ ~ ~ {Tags:["survivor_blood_trail"]}