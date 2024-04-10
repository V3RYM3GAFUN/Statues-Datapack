gamemode spectator @s
team join Spectator @s
tp @s @p[team=!Survivor]

tellraw @a [{"selector":"@s"},{"text":" is now spectating!","color":"blue"}]