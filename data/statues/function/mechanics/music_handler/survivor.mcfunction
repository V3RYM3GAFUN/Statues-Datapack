# Make timer go down
execute if score @s Statues.SongTimer matches 0.. run scoreboard players remove @s Statues.SongTimer 1

#> Song Title: Avery Alexander - Lab
# Song time: 3:48 (4560 ticks) x2 because pitch 0 + 30 seconds grace time
execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run playsound statues:music.lobby.lab record @s ~ ~ ~ 0.5 0
# execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run title @s actionbar [{"translate": "statues.now_playing"},{"text": " - "},{"text": "Avery Alexander: Lab"}]
execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run scoreboard players set @s Statues.SongTimer 9720