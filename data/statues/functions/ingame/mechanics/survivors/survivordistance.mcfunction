execute at @s if entity @a[team=Survivor,tag=!hidden,distance=7.5..12.5] if score @s Statues.Heartbeat matches ..0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0
execute at @s if entity @a[team=Survivor,tag=!hidden,distance=7.5..12.5] run scoreboard players remove @s Statues.Heartbeat 1

execute at @s if entity @a[team=Survivor,tag=!hidden,distance=3.5..7.5] if score @s Statues.Heartbeat matches ..0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0.7
execute at @s if entity @a[team=Survivor,tag=!hidden,distance=3.5..7.5] run scoreboard players remove @s Statues.Heartbeat 2

execute at @s if entity @a[team=Survivor,tag=!hidden,distance=..3.5] if score @s Statues.Heartbeat matches ..0 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1
execute at @s if entity @a[team=Survivor,tag=!hidden,distance=..3.5] run scoreboard players remove @s Statues.Heartbeat 4

execute if score @s Statues.Heartbeat matches ..-1 run scoreboard players set @s Statues.Heartbeat 40