gamemode spectator @s
team join Spectator @s
tp @s @r[team=Survivor]

tellraw @a [{"translate":"statues.lobby.spectate.success","color":"blue","with": [{"selector":"@s"}]}]