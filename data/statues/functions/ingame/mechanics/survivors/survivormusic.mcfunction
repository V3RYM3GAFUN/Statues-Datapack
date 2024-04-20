#> CHANGES NEEDED: This dumb wolf forgot sounds can be stacked, even if it's music :'3
#> So this whole thing kinda needs to be recoded

#> Loop ambient song
execute as @a[team=Survivor] at @s if score @s Statues.DynamicData matches 0 run playsound minecraft:music_disc.13 music @s ~ ~ ~ 1.5 0.5
# execute if score $Song Statues.DynamicData matches 2 if score $SongTime Statues.DynamicData matches ..-1 run scoreboard players set $SongTime Statues.DynamicData 5160

#> Chase music
execute as @a[team=Survivor] at @s if score @s Statues.DynamicData matches 0..99 if entity @a[team=Monster,distance=..8] run scoreboard players add @s Statues.DynamicData 1
execute as @a[team=Survivor] at @s if score @s Statues.DynamicData matches 80 run stopsound @s
execute as @a[team=Survivor] at @s if score @s Statues.DynamicData matches 100 run playsound minecraft:music_disc.11 music @s ~ ~ ~ 1 1

execute as @a[team=Survivor] at @s if entity @a[team=Monster,distance=8..] if score @s Statues.DynamicData matches 1.. run scoreboard players remove @s Statues.DynamicData 1


