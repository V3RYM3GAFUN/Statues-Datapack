# Choose next song when time reaches 0
execute if score $SongTime Statues.DynamicData matches 0 run scoreboard players add $Song Statues.DynamicData 1
# Go back to first song after last song
execute if score $Song Statues.DynamicData matches 4 run scoreboard players set $Song Statues.DynamicData 1
# Make timer go down
execute if score $SongTime Statues.DynamicData matches 0.. run scoreboard players remove $SongTime Statues.DynamicData 1

# Song time: 4:28 (5360 ticks) + 30 seconds grace time
execute as @a[team=Lobby] at @s if score $Status Statues.DynamicData matches 0..2 if score $Song Statues.DynamicData matches 1 if score $SongTime Statues.DynamicData matches -1 run playsound statues:music.lobby.moonrise record @s ~ ~ ~ 1 1
execute if score $Song Statues.DynamicData matches 1 if score $SongTime Statues.DynamicData matches -1 run scoreboard players set $SongTime Statues.DynamicData 5960

# Song time: 3:48 (4560 ticks) + 30 seconds grace time
execute as @a[team=Lobby] at @s if score $Status Statues.DynamicData matches 0..2 if score $Song Statues.DynamicData matches 2 if score $SongTime Statues.DynamicData matches -1 run playsound statues:music.lobby.lab record @s ~ ~ ~ 1 1
execute if score $Song Statues.DynamicData matches 2 if score $SongTime Statues.DynamicData matches -1 run scoreboard players set $SongTime Statues.DynamicData 5160

# Song time:  7:39 (9180 ticks) + 30
execute as @a[team=Lobby] at @s if score $Status Statues.DynamicData matches 0..2 if score $Song Statues.DynamicData matches 3 if score $SongTime Statues.DynamicData matches -1 run playsound statues:music.lobby.foundation record @s ~ ~ ~ 1 1
execute if score $Song Statues.DynamicData matches 3 if score $SongTime Statues.DynamicData matches -1 run scoreboard players set $SongTime Statues.DynamicData 9780
