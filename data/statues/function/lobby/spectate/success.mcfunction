gamemode spectator @s
team join Spectator @s
execute if score $Map Statues.DynamicData matches 0 run function statues:warps/facade
spectate @n[team=Survivor]

tellraw @a [{"translate":"statues.lobby.spectate.success","color":"blue","with": [{"selector":"@s"}]}]