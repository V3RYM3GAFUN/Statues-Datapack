# Choose next song when time reaches 0
execute if score @s Statues.SongTimer matches 0 run scoreboard players add @s Statues.SongSelect 1
# Go back to first song after last song
execute if score @s Statues.SongSelect matches 4 run scoreboard players set @s Statues.SongSelect 1
# Make timer go down
execute if score @s Statues.SongTimer matches 0.. run scoreboard players remove @s Statues.SongTimer 1

#> Song Title: Avery Alexander - Moonrise
# Song time: 4:28 (5360 ticks) + 30 seconds grace time
execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run playsound statues:music.lobby.moonrise record @s ~ ~ ~ 1 1
execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run title @s actionbar [{"translate": "statues.now_playing"},{"text": " - "},{"text": "Avery Alexander: Moonrise"}]
execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run title @s times 0 5s 5t
execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run scoreboard players set @s Statues.SongTimer 5960

#> Song Title: Avery Alexander - Lab
# Song time: 3:48 (4560 ticks) + 30 seconds grace time
execute if score @s Statues.SongSelect matches 2 if score @s Statues.SongTimer matches -1 run playsound statues:music.lobby.lab record @s ~ ~ ~ 1 1
execute if score @s Statues.SongSelect matches 2 if score @s Statues.SongTimer matches -1 run title @s actionbar [{"translate": "statues.now_playing"},{"text": " - "},{"text": "Avery Alexander: Lab"}]
execute if score @s Statues.SongSelect matches 2 if score @s Statues.SongTimer matches -1 run title @s times 0 5s 5t
execute if score @s Statues.SongSelect matches 2 if score @s Statues.SongTimer matches -1 run scoreboard players set @s Statues.SongTimer 5160

#> Song Title: Avery Alexander - Foundation
# Song time:  7:39 (9180 ticks) + 30
execute if score @s Statues.SongSelect matches 3 if score @s Statues.SongTimer matches -1 run playsound statues:music.lobby.foundation record @s ~ ~ ~ 1 1
execute if score @s Statues.SongSelect matches 3 if score @s Statues.SongTimer matches -1 run title @s actionbar [{"translate": "statues.now_playing"},{"text": " - "},{"text": "Avery Alexander: Foundation"}]
execute if score @s Statues.SongSelect matches 3 if score @s Statues.SongTimer matches -1 run title @s times 0 5s 5t
execute if score @s Statues.SongSelect matches 3 if score @s Statues.SongTimer matches -1 run scoreboard players set @s Statues.SongTimer 9780