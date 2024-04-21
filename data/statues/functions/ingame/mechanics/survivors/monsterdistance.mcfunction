execute at @s if entity @a[team=Monster,distance=10.5..14.5,dy=2] if score @s Statues.Heartbeat matches 0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0.7
execute at @s if entity @a[team=Monster,distance=10.5..14.5,dy=2] run scoreboard players remove @s Statues.Heartbeat 1

execute at @s if entity @a[team=Monster,distance=4.5..10.5,dy=2] if score @s Statues.Heartbeat matches 0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0.9
execute at @s if entity @a[team=Monster,distance=4.5..10.5,dy=2] run scoreboard players remove @s Statues.Heartbeat 2

execute at @s if entity @a[team=Monster,distance=..4.5,dy=2] if score @s Statues.Heartbeat matches 0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1.1
execute at @s if entity @a[team=Monster,distance=..4.5,dy=2] run scoreboard players remove @s Statues.Heartbeat 4

execute if score @s Statues.Heartbeat matches ..-1 run scoreboard players set @s Statues.Heartbeat 40