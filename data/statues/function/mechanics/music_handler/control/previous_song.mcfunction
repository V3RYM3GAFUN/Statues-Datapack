execute if entity @s[team=Lobby] run scoreboard players remove @s Statues.SongSelect 2

# Select last available song if below the first song
execute if score @s[team=Lobby] Statues.SongSelect matches ..-1 run scoreboard players set @s Statues.SongSelect 4

execute if entity @s[team=Lobby] run scoreboard players set @s Statues.SongTimer 1
stopsound @s

scoreboard players set @s previous_song 0
scoreboard players enable @s previous_song