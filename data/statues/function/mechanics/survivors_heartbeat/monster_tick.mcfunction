execute unless function statues:feature_flags/check_survivors_heartbeat_flags run return fail

execute if entity @a[team=Survivor,tag=!hidden,distance=7.5..12.5,sort=nearest,limit=1] run scoreboard players remove @s Statues.Heartbeat 1
execute if entity @a[team=Survivor,tag=!hidden,distance=7.5..12.5,sort=nearest,limit=1] if score @s Statues.Heartbeat matches 8 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.6
execute if entity @a[team=Survivor,tag=!hidden,distance=7.5..12.5,sort=nearest,limit=1] if score @s Statues.Heartbeat matches 0 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.5

execute if entity @a[team=Survivor,tag=!hidden,distance=3.5..7.4999,sort=nearest,limit=1] run scoreboard players remove @s Statues.Heartbeat 2
execute if entity @a[team=Survivor,tag=!hidden,distance=3.5..7.4999,sort=nearest,limit=1] if score @s Statues.Heartbeat matches 8 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.65
execute if entity @a[team=Survivor,tag=!hidden,distance=3.5..7.4999,sort=nearest,limit=1] if score @s Statues.Heartbeat matches 0 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.6

execute if entity @a[team=Survivor,tag=!hidden,distance=0..3.4999,sort=nearest,limit=1] run scoreboard players remove @s Statues.Heartbeat 4
execute if entity @a[team=Survivor,tag=!hidden,distance=0..3.4999,sort=nearest,limit=1] if score @s Statues.Heartbeat matches 8 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.75
execute if entity @a[team=Survivor,tag=!hidden,distance=0..3.4999,sort=nearest,limit=1] if score @s Statues.Heartbeat matches 0 run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.7

execute if score @s Statues.Heartbeat matches ..-1 run scoreboard players set @s Statues.Heartbeat 40
