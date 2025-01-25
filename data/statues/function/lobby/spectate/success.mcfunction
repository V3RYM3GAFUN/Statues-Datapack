gamemode spectator @s
team join Spectator @s
tp @s @r[team=Survivor]

tellraw @a [{"selector":"@s"},{"text":" is now spectating!","color":"blue"}]