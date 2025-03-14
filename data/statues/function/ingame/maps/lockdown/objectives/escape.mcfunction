execute positioned ~-1 ~ ~-1 run tag @a[team=Survivor,dx=2,dy=1,dz=2] add win
execute positioned ~-1 ~ ~-1 run gamemode spectator @a[team=Survivor,dx=2,dy=1,dz=2]
execute positioned ~-1 ~ ~-1 run effect give @a[team=Survivor,dx=2,dy=1,dz=2] night_vision infinite 0 true
execute positioned ~-1 ~ ~-1 run execute as @a[team=Survivor,dx=2,dy=1,dz=2] run function #statues:game_events/ingame/survivor_escaped
execute positioned ~-1 ~ ~-1 run execute as @a[team=Survivor,dx=2,dy=1,dz=2] run tellraw @a [{"translate":"statues.game.facade.objective.escape","color":"aqua","with": [{"selector":"@s","bold": true}]}]
execute positioned ~-1 ~ ~-1 run execute if entity @a[team=Survivor,dx=2,dy=1,dz=2,limit=1] as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
execute positioned ~-1 ~ ~-1 run team join Spectator @a[team=Survivor,dx=2,dy=1,dz=2]

scoreboard players set $CompassSelector Statues.DynamicData 10

execute as @s[type=marker] run particle minecraft:totem_of_undying ~ ~1 ~ .5 0.1 0.5 0 10 normal