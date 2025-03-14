# Go back to first song after last song
execute if score @s Statues.SongSelect matches 2 run scoreboard players set @s Statues.SongSelect 1

# Make timer go down
execute if score @s Statues.SongTimer matches 0.. run scoreboard players remove @s Statues.SongTimer 1

#> Song Title: Avery Alexander - Under The Radar
# Song time: 3:16 (3920 ticks) + 30 seconds grace time
execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run playsound statues:music.lobby.lab record @s ~ ~ ~ 0.8 1
# execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run title @s actionbar [{"translate": "statues.now_playing"},{"text": " - "},{"text": "Avery Alexander: Lab"}]
execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run scoreboard players set @s Statues.SongTimer 4520