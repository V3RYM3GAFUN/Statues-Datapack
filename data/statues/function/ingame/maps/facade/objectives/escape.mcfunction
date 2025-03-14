execute as @e[type=text_display,tag=objective_facade_book] run data modify entity @s text set value "{\"text\":\"\"}"

tag @s add win
gamemode spectator @s
effect give @s night_vision infinite 0 true
execute as @s run function #statues:game_events/ingame/survivor_escaped
execute as @s run tellraw @a [{"translate":"statues.game.facade.objective.escape","color":"aqua","with": [{"selector":"@s","bold": true}]}]
execute if entity @a[team=Survivor,distance=..2.5,limit=1] as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
team join Spectator @s

scoreboard players set $CompassSelector Statues.DynamicData 10