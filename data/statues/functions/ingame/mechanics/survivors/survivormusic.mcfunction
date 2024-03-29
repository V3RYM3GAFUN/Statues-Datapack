#> Loop song
execute as @a[team=Survivor] at @s if score @s Statues.Data matches 0 run playsound minecraft:music_disc.13 music @s ~ ~ ~ 1.5 0.5
# execute if score $Song Statues.Data matches 2 if score $SongTime Statues.Data matches ..-1 run scoreboard players set $SongTime Statues.Data 5160

#> Chase music
execute as @a[team=Survivor] at @s if score @s Statues.Data matches 0..99 if entity @e[team=Monster,distance=..8] run scoreboard players add @s Statues.Data 1
execute as @a[team=Survivor] at @s if score @s Statues.Data matches 80 run stopsound @s
execute as @a[team=Survivor] at @s if score @s Statues.Data matches 100 run playsound minecraft:music_disc.11 music @s ~ ~ ~ 1 1

execute as @a[team=Survivor] at @s if entity @e[team=Monster,distance=8..] if score @s Statues.Data matches 1.. run scoreboard players remove @s Statues.Data 1