#> Keeps track of the time in a bossbar
scoreboard players operation $Timer.RemainingSeconds Statues.Data = $Timer.Seconds Statues.Data
scoreboard players operation $Timer.RemainingSeconds Statues.Data %= $60 Statues.Data
scoreboard players operation $Timer.RemainingMinutes Statues.Data = $Timer.Seconds Statues.Data
scoreboard players operation $Timer.RemainingMinutes Statues.Data /= $60 Statues.Data
execute store result storage statues:data remaining_seconds int 1 run scoreboard players get $Timer.RemainingSeconds Statues.Data
execute store result storage statues:data remaining_minutes int 1 run scoreboard players get $Timer.RemainingMinutes Statues.Data
function statues:ingame/gametimer_bossbar with storage statues:data
execute store result bossbar gametimer value run scoreboard players get $Timer.Seconds Statues.Data
bossbar set gametimer players @a
bossbar set gametimer visible true

#> Clock for the timer
scoreboard players remove $Timer.Ticks Statues.Data 1

#> Cap the timer at its max value
execute if score $Timer.Seconds Statues.Data matches 602.. run scoreboard players set $Timer.Seconds Statues.Data 601 

#> Old in-game timer
#execute if score $Timer.Minutes Statues.Data matches ..9 if score $Timer.Seconds Statues.Data matches ..9 run title @a actionbar [{"text": "Time left: 0"},{"score":{"name":"$Timer.Minutes","objective":"Statues.Data"}},{"text":":0"},{"score":{"name":"$Timer.Seconds","objective":"Statues.Data"}}]
#execute if score $Timer.Minutes Statues.Data matches ..9 if score $Timer.Seconds Statues.Data matches 10.. run title @a actionbar [{"text": "Time left: 0"},{"score":{"name":"$Timer.Minutes","objective":"Statues.Data"}},{"text":":"},{"score":{"name":"$Timer.Seconds","objective":"Statues.Data"}}]
#execute if score $Timer.Minutes Statues.Data matches 10.. if score $Timer.Seconds Statues.Data matches ..9 run title @a actionbar [{"text": "Time left: "},{"score":{"name":"$Timer.Minutes","objective":"Statues.Data"}},{"text":":0"},{"score":{"name":"$Timer.Seconds","objective":"Statues.Data"}}]
#execute if score $Timer.Minutes Statues.Data matches 10.. if score $Timer.Seconds Statues.Data matches 10.. run title @a actionbar [{"text": "Time left: "},{"score":{"name":"$Timer.Minutes","objective":"Statues.Data"}},{"text":":"},{"score":{"name":"$Timer.Seconds","objective":"Statues.Data"}}]

#> The data still used for the timer
execute if score $Timer.Ticks Statues.Data matches ..-1 run scoreboard players remove $Timer.Seconds Statues.Data 1
execute if score $Timer.Ticks Statues.Data matches ..-1 run scoreboard players set $Timer.Ticks Statues.Data 19
#execute if score $Timer.Seconds Statues.Data matches ..-1 run scoreboard players remove $Timer.Minutes Statues.Data 1
#execute if score $Timer.Seconds Statues.Data matches ..-1 run scoreboard players set $Timer.Seconds Statues.Data 59

# # # # # # # # # # # # #

#> Tracks how many survivors are still alive
execute store result score $Ingame.Alive Statues.Data if entity @e[team=Survivor]

#> Tell the last survivor that they're alone
execute as @e[team=Survivor,tag=!solo] at @s if score $Ingame.Alive Statues.Data matches 1 run function statues:ingame/mechanics/survivors/lastsurvivor

#> What to do if time runs out
execute if score $Timer.Seconds Statues.Data matches ..1 if score $Timer.Ticks Statues.Data matches ..0 run function statues:ingame/win_conditions/timeout
#> Detect when no survivors are alive and that no one has won
execute if entity @a[tag=!win] if score $Ingame.Alive Statues.Data matches 0 run function statues:ingame/win_conditions/monstervictory

#> Detect when there's not longer a survivor alive and there's at least one winner
execute if entity @a[tag=win] if score $Ingame.Alive Statues.Data matches 0 run function statues:ingame/win_conditions/survivorvictory

#> Function that detects when the monster leaves
execute unless entity @e[team=Monster] if score $Status Statues.Data matches 3 run function statues:ingame/win_conditions/monsterexit

