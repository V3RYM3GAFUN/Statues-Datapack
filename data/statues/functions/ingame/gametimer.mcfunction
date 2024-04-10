#> Keeps track of the time in a bossbar
scoreboard players operation $Timer.RemainingSeconds Statues.TempData = $Timer.Seconds Statues.DynamicData
scoreboard players operation $Timer.RemainingSeconds Statues.TempData %= $60 Statues.StaticData
scoreboard players operation $Timer.RemainingMinutes Statues.TempData = $Timer.Seconds Statues.DynamicData
scoreboard players operation $Timer.RemainingMinutes Statues.TempData /= $60 Statues.StaticData
execute store result storage statues:data remaining_seconds int 1 run scoreboard players get $Timer.RemainingSeconds Statues.TempData
execute store result storage statues:data remaining_minutes int 1 run scoreboard players get $Timer.RemainingMinutes Statues.TempData
function statues:ingame/gametimer_bossbar with storage statues:data
execute store result bossbar statues:gametimer value run scoreboard players get $Timer.Seconds Statues.DynamicData
bossbar set statues:gametimer players @a
bossbar set statues:gametimer visible true

#> Clock for the timer
scoreboard players remove $Timer.Ticks Statues.DynamicData 1

#> Cap the timer at its max value
execute if score $Timer.Seconds Statues.DynamicData matches 602.. run scoreboard players set $Timer.Seconds Statues.DynamicData 600

execute if score $Timer.Seconds Statues.DynamicData matches 451.. run bossbar set statues:gametimer color white
execute if score $Timer.Seconds Statues.DynamicData matches 301..450 run bossbar set statues:gametimer color green
execute if score $Timer.Seconds Statues.DynamicData matches 151..300 run bossbar set statues:gametimer color yellow
execute if score $Timer.Seconds Statues.DynamicData matches ..150 run bossbar set statues:gametimer color red

#> Old in-game timer
#execute if score $Timer.Minutes Statues.DynamicData matches ..9 if score $Timer.Seconds Statues.DynamicData matches ..9 run title @a actionbar [{"text": "Time left: 0"},{"score":{"name":"$Timer.Minutes","objective":"Statues.DynamicData"}},{"text":":0"},{"score":{"name":"$Timer.Seconds","objective":"Statues.DynamicData"}}]
#execute if score $Timer.Minutes Statues.DynamicData matches ..9 if score $Timer.Seconds Statues.DynamicData matches 10.. run title @a actionbar [{"text": "Time left: 0"},{"score":{"name":"$Timer.Minutes","objective":"Statues.DynamicData"}},{"text":":"},{"score":{"name":"$Timer.Seconds","objective":"Statues.DynamicData"}}]
#execute if score $Timer.Minutes Statues.DynamicData matches 10.. if score $Timer.Seconds Statues.DynamicData matches ..9 run title @a actionbar [{"text": "Time left: "},{"score":{"name":"$Timer.Minutes","objective":"Statues.DynamicData"}},{"text":":0"},{"score":{"name":"$Timer.Seconds","objective":"Statues.DynamicData"}}]
#execute if score $Timer.Minutes Statues.DynamicData matches 10.. if score $Timer.Seconds Statues.DynamicData matches 10.. run title @a actionbar [{"text": "Time left: "},{"score":{"name":"$Timer.Minutes","objective":"Statues.DynamicData"}},{"text":":"},{"score":{"name":"$Timer.Seconds","objective":"Statues.DynamicData"}}]

#> The data still used for the timer
execute if score $Timer.Ticks Statues.DynamicData matches ..-1 run scoreboard players remove $Timer.Seconds Statues.DynamicData 1
execute if score $Timer.Ticks Statues.DynamicData matches ..-1 run scoreboard players set $Timer.Ticks Statues.DynamicData 19
#execute if score $Timer.Seconds Statues.DynamicData matches ..-1 run scoreboard players remove $Timer.Minutes Statues.DynamicData 1
#execute if score $Timer.Seconds Statues.DynamicData matches ..-1 run scoreboard players set $Timer.Seconds Statues.DynamicData 59

# # # # # # # # # # # # #

#> Tracks how many survivors are still alive
execute store result score $Ingame.Alive Statues.TempData if entity @e[team=Survivor]

#> Function that detects when the monster leaves
execute unless entity @e[team=Monster] run function statues:ingame/win_conditions/monsterexit

#> Tell the last survivor that they're alone
execute as @e[team=Survivor,tag=!solo] at @s if score $Ingame.Alive Statues.TempData matches 1 run function statues:ingame/mechanics/survivors/lastsurvivor

#> What to do if time runs out
execute if score $Timer.Seconds Statues.DynamicData matches ..1 if score $Timer.Ticks Statues.DynamicData matches ..0 run function statues:ingame/win_conditions/timeout

#> Check which team wins
execute if score $Ingame.Alive Statues.TempData matches 0 run function statues:ingame/win_conditions/checkwinner

# Detect when there's not longer a survivor alive and there's at least one winner
# execute if entity @a[tag=win] if score $Ingame.Alive Statues.TempData matches 0 run function statues:ingame/win_conditions/survivorvictory

# Detect when no survivors are alive and that no one has won
# execute unless entity @a[team=Survivor] run function statues:ingame/win_conditions/monstervictory