execute unless function statues:feature_flags/check_survivors_heartbeat_flags run return fail

scoreboard players remove @s Statues.Heartbeat 1

execute positioned ~-6.5 ~.75 ~-6.5 if entity @p[team=Monster,dx=12,dy=2,dz=12,limit=1] run return run function statues:mechanics/survivors_heartbeat/survivors/close

execute positioned ~-11.5 ~-1.25 ~-11.5 if entity @p[team=Monster,dx=22,dy=6,dz=22,limit=1] run return run function statues:mechanics/survivors_heartbeat/survivors/medium

execute positioned ~-14.5 ~-4.15 ~-14.5 if entity @p[team=Monster,dx=28,dy=12,dz=28,limit=1] run return run function statues:mechanics/survivors_heartbeat/survivors/far