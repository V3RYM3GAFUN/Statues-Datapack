execute unless function statues:feature_flags/check_survivors_heartbeat_flags run return fail

execute if entity @a[team=Monster,distance=12.5..16.5,sort=nearest,limit=1] run scoreboard players remove @s Statues.Heartbeat 1
execute if entity @a[team=Monster,distance=12.5..16.5,sort=nearest,limit=1] if score @s Statues.Heartbeat matches ..0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0.8
execute if score @s Statues.Heartbeat matches ..-1 run scoreboard players add @s Statues.Heartbeat 40
execute if score @s Statues.Heartbeat matches ..0 run scoreboard players set @s Statues.Heartbeat 0

execute if entity @a[team=Monster,distance=6.5..12.4999,sort=nearest,limit=1] run scoreboard players remove @s Statues.Heartbeat 2
execute if entity @a[team=Monster,distance=6.5..12.4999,sort=nearest,limit=1] if score @s Statues.Heartbeat matches ..0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1.2
execute if score @s Statues.Heartbeat matches ..-1 run scoreboard players add @s Statues.Heartbeat 40
execute if score @s Statues.Heartbeat matches ..0 run scoreboard players set @s Statues.Heartbeat 0

execute if entity @a[team=Monster,distance=0..6.4999,sort=nearest,limit=1] run scoreboard players remove @s Statues.Heartbeat 4
execute if entity @a[team=Monster,distance=0..6.4999,sort=nearest,limit=1] if score @s Statues.Heartbeat matches ..0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1.4
execute if score @s Statues.Heartbeat matches ..-1 run scoreboard players add @s Statues.Heartbeat 40
execute if score @s Statues.Heartbeat matches ..0 run scoreboard players set @s Statues.Heartbeat 0
