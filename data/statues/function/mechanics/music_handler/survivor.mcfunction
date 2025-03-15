# Go back to first song after last song
execute if score @s Statues.SongSelect matches 2.. if score @s Statues.Chase matches ..99 run scoreboard players set @s Statues.SongSelect 1

# Make timer go down
execute if score @s Statues.SongTimer matches 0.. run scoreboard players remove @s Statues.SongTimer 1

#> Song Title: Avery Alexander - Under The Radar
# Song time: 3:16 (3920 ticks) + 10 seconds grace time
execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run playsound statues:music.survivor.radar record @s ~ ~ ~ 0.8 1
# execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run title @s actionbar [{"translate": "statues.now_playing"},{"text": " - "},{"text": "Avery Alexander: Lab"}]
execute if score @s Statues.SongSelect matches 1 if score @s Statues.SongTimer matches -1 run scoreboard players set @s Statues.SongTimer 3960

#> Chase music

#> Count how long a monster has been close to the player
# Medium Distance trigger
execute positioned ~-11.5 ~-1.25 ~-11.5 if entity @p[team=Monster,dx=22,dy=6,dz=22,limit=1] if score @s Statues.Chase matches 0..100 run scoreboard players add @s Statues.Chase 1
execute positioned ~-11.5 ~-1.25 ~-11.5 unless entity @p[team=Monster,dx=22,dy=6,dz=22,limit=1] if score @s Statues.Chase matches 1..101 run scoreboard players remove @s Statues.Chase 1

execute if score @s Statues.Chase matches 100 run function statues:mechanics/music_handler/control/trigger_chase

#> Song Title: Avery Alexander - Epsilon 11
# Song time: 3:15 (3900 ticks) + 10 seconds grace time
execute if score @s Statues.SongSelect matches 2 if score @s Statues.SongTimer matches -1 run playsound statues:music.survivor.epsilon11 record @s ~ ~ ~ 1.2 1
execute if score @s Statues.SongSelect matches 2 if score @s Statues.SongTimer matches -1 run scoreboard players set @s Statues.SongTimer 3960

#> Reset Chase music
execute if score @s Statues.Chase matches 1 run function statues:mechanics/music_handler/control/trigger_chase