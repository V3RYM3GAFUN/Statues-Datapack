execute as @e[type=text_display,tag=objective_facade_book] run data modify entity @s text set value "{'text':''}"

execute at @s if entity @a[team=Survivor,distance=..2.5] run tag @p[team=Survivor,distance=..2.5] add win
execute at @s if entity @a[team=Survivor,distance=..2.5] run gamemode spectator @p[team=Survivor,distance=..2.5]
execute at @s if entity @a[team=Survivor,distance=..2.5] run effect give @p[team=Survivor,distance=..2.5] night_vision infinite 0 true
execute at @s if entity @a[team=Survivor,distance=..2.5] run tellraw @a ["",{"selector":"@p[team=Survivor]"},{"text":" has escaped!","color":"aqua"}]
execute at @s if entity @a[team=Survivor,distance=..2.5] as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
execute at @s if entity @a[team=Survivor,distance=..2.5] run team join Spectator @p[team=Survivor,distance=..2.5]

scoreboard players set $CompassSelector Statues.DynamicData 10