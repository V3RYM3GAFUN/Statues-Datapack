execute unless function statues:feature_flags/check_survivors_heartbeat_flags run return fail

#> First test for the closest range, return on success
execute positioned ~-6.5 ~ ~-6.5 if entity @p[team=Monster,dx=13,dy=2,dz=13,limit=1] run return run scoreboard players remove @s Statues.Heartbeat 4
execute positioned ~-6.5 ~ ~-6.5 if entity @p[team=Monster,dx=13,dy=2,dz=13,limit=1] if score @s Statues.Heartbeat matches 8 run return run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.75
execute positioned ~-6.5 ~ ~-6.5 if entity @p[team=Monster,dx=13,dy=2,dz=13,limit=1] if score @s Statues.Heartbeat matches 0 run return run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.7

#> Then test for the mid range, return on success
execute positioned ~-11.5 ~ ~-11.5 if entity @p[team=Monster,dx=23,dy=2,dz=23,limit=1] run return run scoreboard players remove @s Statues.Heartbeat 2
execute positioned ~-11.5 ~ ~-11.5 if entity @p[team=Monster,dx=23,dy=2,dz=23,limit=1] if score @s Statues.Heartbeat matches 8 run return run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.65
execute positioned ~-11.5 ~ ~-11.5 if entity @p[team=Monster,dx=23,dy=2,dz=23,limit=1] if score @s Statues.Heartbeat matches 0 run return run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.6

#> If all fail, test for the farthest range
execute positioned ~-14.5 ~ ~-14.5 if entity @p[team=Monster,dx=29,dy=2,dz=29,limit=1] run scoreboard players remove @s Statues.Heartbeat 1
execute positioned ~-14.5 ~ ~-14.5 if entity @p[team=Monster,dx=29,dy=2,dz=29,limit=1] if score @s Statues.Heartbeat matches 8 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.6
execute positioned ~-14.5 ~ ~-14.5 if entity @p[team=Monster,dx=29,dy=2,dz=29,limit=1] if score @s Statues.Heartbeat matches 0 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.5

execute if score @s Statues.Heartbeat matches ..-1 run scoreboard players set @s Statues.Heartbeat 40