execute unless function statues:feature_flags/check_survivors_heartbeat_flags run return fail

execute if entity @s[team=Survivor] run function statues:mechanics/survivors_heartbeat/survivor_tick
execute if entity @s[team=Monster] run function statues:mechanics/survivors_heartbeat/monster_tick
