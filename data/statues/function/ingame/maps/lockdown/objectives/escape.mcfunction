tag @s add win
gamemode spectator @s
clear @s
effect give @s night_vision infinite 0 true
execute as @s run function #statues:game_events/ingame/survivor_escaped
execute as @s run tellraw @a [{"translate":"statues.game.facade.objective.escape","color":"aqua","with": [{"selector":"@s","bold": true}]}]
execute if entity @s as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
team join Spectator @s


scoreboard players set $CompassSelector Statues.DynamicData 10

# execute as @s[type=marker] run particle minecraft:totem_of_undying ~ ~1 ~ .5 0.1 0.5 0 10 normal