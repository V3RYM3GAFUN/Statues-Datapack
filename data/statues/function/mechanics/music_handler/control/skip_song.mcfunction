execute if entity @s[team=Lobby] run scoreboard players set @s Statues.SongTimer 1
stopsound @s

scoreboard players set @s skip_song 0
scoreboard players enable @s skip_song