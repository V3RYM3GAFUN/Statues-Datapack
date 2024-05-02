execute unless function statues:feature_flags/check_survivors_heartbeat_flags run return fail

execute as @a[team=Survivor] at @s run function statues:mechanics/survivors_heartbeat/survivor_tick
execute as @a[team=Monster] at @s run function statues:mechanics/survivors_heartbeat/mosnter_tick
