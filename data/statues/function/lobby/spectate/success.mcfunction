gamemode spectator @s
team join Spectator @s
tp @s @r[team=Survivor]

tellraw @a [{"selector":"@s"},{"translate":"statues.lobby.spectate.success","color":"blue"}]