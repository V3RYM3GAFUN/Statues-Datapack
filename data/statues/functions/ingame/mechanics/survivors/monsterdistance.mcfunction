execute at @s if entity @p[team=Monster,distance=12.5..16.5] if score @s Statues.Heartbeat matches ..0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0.8
execute at @s if entity @p[team=Monster,distance=12.5..16.5] run scoreboard players remove @s Statues.Heartbeat 1

execute at @s if entity @p[team=Monster,distance=6.5..12.5] if score @s Statues.Heartbeat matches ..0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1.2
execute at @s if entity @p[team=Monster,distance=6.5..12.5] run scoreboard players remove @s Statues.Heartbeat 2

execute at @s if entity @p[team=Monster,distance=..6.5] if score @s Statues.Heartbeat matches ..0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1.4
execute at @s if entity @p[team=Monster,distance=..6.5] run scoreboard players remove @s Statues.Heartbeat 4

execute if score @s Statues.Heartbeat matches ..-1 run scoreboard players set @s Statues.Heartbeat 40