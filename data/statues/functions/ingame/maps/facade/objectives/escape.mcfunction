execute as @e[type=text_display,tag=objective_facade_book] run data modify entity @s text set value "{'text':''}"

execute at @s if entity @a[team=Survivor,distance=..3] run tag @p[team=Survivor,distance=..3] add win
execute at @s if entity @a[team=Survivor,distance=..3] run gamemode spectator @p[team=Survivor,distance=..3]
execute at @s if entity @a[team=Survivor,distance=..3] run tellraw @a ["",{"selector":"@p[team=Survivor]"},{"text":" has escaped!","color":"aqua"}]
execute at @s if entity @a[team=Survivor,distance=..3] as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
execute at @s if entity @a[team=Survivor,distance=..3] run team join Spectator @p[team=Survivor,distance=..3]