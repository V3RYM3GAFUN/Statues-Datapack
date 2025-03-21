execute if score dev_infinite_game_time Statues.FeatureFlags matches 1.. run scoreboard players set $Timer.Seconds Statues.DynamicData 600

#> Keeps track of the time in a bossbar
scoreboard players operation $Timer.RemainingSeconds Statues.TempData = $Timer.Seconds Statues.DynamicData
scoreboard players operation $Timer.RemainingSeconds Statues.TempData %= $60 Statues.Constants
scoreboard players operation $Timer.RemainingMinutes Statues.TempData = $Timer.Seconds Statues.DynamicData
scoreboard players operation $Timer.RemainingMinutes Statues.TempData /= $60 Statues.Constants
execute store result storage statues:data remaining_seconds int 1 run scoreboard players get $Timer.RemainingSeconds Statues.TempData
execute store result storage statues:data remaining_minutes int 1 run scoreboard players get $Timer.RemainingMinutes Statues.TempData
execute unless score dev_infinite_game_time Statues.FeatureFlags matches 1.. run function statues:ingame/gametimer_bossbar with storage statues:data
execute if score dev_infinite_game_time Statues.FeatureFlags matches 1.. run bossbar set statues:gametimer name "Time left: ∞"
execute store result bossbar statues:gametimer value run scoreboard players get $Timer.Seconds Statues.DynamicData
bossbar set statues:gametimer players @a[team=!Monster]
bossbar set statues:gametimer visible true

#> Clock for the timer
execute unless score $ReplayWatching Statues.DynamicData matches 1 run scoreboard players remove $Timer.Ticks Statues.DynamicData 1
execute if score $ReplayWatching Statues.DynamicData matches 1 unless score $ReplayFreeze Statues.DynamicData matches 1 run scoreboard players remove $Timer.Ticks Statues.DynamicData 1

#> Cap the timer at its max value
execute if score $Timer.Seconds Statues.DynamicData matches 602.. run scoreboard players set $Timer.Seconds Statues.DynamicData 600

execute if score $Timer.Seconds Statues.DynamicData matches 451.. run bossbar set statues:gametimer color white
execute if score $Timer.Seconds Statues.DynamicData matches 301..450 run bossbar set statues:gametimer color green
execute if score $Timer.Seconds Statues.DynamicData matches 151..300 run bossbar set statues:gametimer color yellow
execute if score $Timer.Seconds Statues.DynamicData matches ..150 run bossbar set statues:gametimer color red

#> Data used for the timer
execute if score $Timer.Ticks Statues.DynamicData matches ..-1 run scoreboard players remove $Timer.Seconds Statues.DynamicData 1
execute if score $Timer.Ticks Statues.DynamicData matches ..-1 run scoreboard players set $Timer.Ticks Statues.DynamicData 19
#execute if score $Timer.Seconds Statues.DynamicData matches ..-1 run scoreboard players remove $Timer.Minutes Statues.DynamicData 1
#execute if score $Timer.Seconds Statues.DynamicData matches ..-1 run scoreboard players set $Timer.Seconds Statues.DynamicData 59

# # # # # # # # # # # # #

execute if score $Timer.Seconds Statues.DynamicData matches 300 if score $Timer.Ticks Statues.DynamicData matches 0 run tellraw @a {"translate": "statues.game.warning.5min","color": "gold","bold":true}
execute if score $Timer.Seconds Statues.DynamicData matches 300 if score $Timer.Ticks Statues.DynamicData matches 0 as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5

execute if score $ReplayWatching Statues.DynamicData matches 1 run return 0

#> Tracks how many survivors are still alive
execute store result score $Ingame.Alive Statues.TempData if entity @a[team=Survivor]

#> Function that detects when the monster leaves
execute unless score dev_allow_empty_game Statues.FeatureFlags matches 1.. unless entity @a[team=Monster] run function statues:ingame/win_conditions/monsterexit

#> Tell the last survivor that they're alone
execute if score $Ingame.Alive Statues.TempData matches 1 as @a[team=Survivor,tag=!solo] at @s run function statues:ingame/mechanics/survivors/lastsurvivor

#> What to do if time runs out
execute if score $Timer.Seconds Statues.DynamicData matches ..1 if score $Timer.Ticks Statues.DynamicData matches ..0 run function statues:ingame/win_conditions/timeout

#> Check which team wins
execute if score $Ingame.Alive Statues.TempData matches 0 run function statues:ingame/win_conditions/checkwinner