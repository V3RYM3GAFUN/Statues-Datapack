scoreboard players remove @s Statues.Heartbeat 1

execute positioned ~-3.5 ~.75 ~-3.5 if entity @p[team=Survivor,dx=6,dy=2,dz=6,limit=1] run return run function statues:mechanics/survivors_heartbeat/monsters/close

execute positioned ~-7.5 ~-1.25 ~-7.5 if entity @p[team=Survivor,dx=14,dy=6,dz=14,limit=1] run return run function statues:mechanics/survivors_heartbeat/monsters/medium

execute positioned ~-12.5 ~-3.15 ~-12.5 if entity @p[team=Survivor,dx=24,dy=10,dz=24,limit=1] run return run function statues:mechanics/survivors_heartbeat/monsters/far