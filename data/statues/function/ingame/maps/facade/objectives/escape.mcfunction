execute as @e[type=text_display,tag=objective_facade_book] run data modify entity @s text set value "{\"text\":\"\"}"

tag @a[team=Survivor,distance=..2.5] add win
gamemode spectator @a[team=Survivor,distance=..2.5]
effect give @a[team=Survivor,distance=..2.5] night_vision infinite 0 true
execute as @a[team=Survivor,distance=..2.5] run function #statues:game_events/ingame/survivor_escaped
execute as @a[team=Survivor,distance=..2.5] run tellraw @a ["",{"selector":"@s"},{"translate":"statues.game.facade.objective.escape","color":"aqua"}]
execute if entity @a[team=Survivor,distance=..2.5,limit=1] as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
team join Spectator @a[team=Survivor,distance=..2.5]

scoreboard players set $CompassSelector Statues.DynamicData 10

execute as @s[type=marker] run particle minecraft:totem_of_undying ~ ~1 ~ 1 0.1 0.5 0 10 normal