scoreboard players remove @s Statues.Heartbeat 1

execute positioned ~-3.5 ~-1 ~-3.5 if entity @p[team=Survivor,dx=7,dy=3,dz=7,limit=1] run return run function statues:mechanics/survivors_heartbeat/monsters/close

execute positioned ~-7.5 ~-3 ~-7.5 if entity @p[team=Survivor,dx=15,dy=6,dz=15,limit=1] run return run function statues:mechanics/survivors_heartbeat/monsters/medium

execute positioned ~-12.5 ~-6 ~-12.5 if entity @p[team=Survivor,dx=25,dy=12,dz=25,limit=1] run return run function statues:mechanics/survivors_heartbeat/monsters/far