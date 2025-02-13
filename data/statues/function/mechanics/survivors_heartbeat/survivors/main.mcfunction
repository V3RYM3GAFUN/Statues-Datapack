scoreboard players remove @s Statues.Heartbeat 1

execute positioned ~-6.5 ~-1 ~-6.5 if entity @p[team=Monster,dx=13,dy=3,dz=13,limit=1] run return run function statues:mechanics/survivors_heartbeat/survivors/close

execute positioned ~-11.5 ~-3 ~-11.5 if entity @p[team=Monster,dx=23,dy=6,dz=23,limit=1] run return run function statues:mechanics/survivors_heartbeat/survivors/medium

execute positioned ~-14.5 ~-5 ~-14.5 if entity @p[team=Monster,dx=29,dy=10,dz=29,limit=1] run return run function statues:mechanics/survivors_heartbeat/survivors/far