#> Keeps track of the time in a bossbar
execute store result bossbar gametimer value run scoreboard players get $Timer.Seconds Statues.Data
bossbar set gametimer players @a
bossbar set gametimer visible true

#> Clock for the timer
scoreboard players remove $Timer.Ticks Statues.Data 1

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
execute as @e[team=Survivor] if score $Ingame.Alive Statues.Data matches 1 run function statues:ingame/mechanics/survivors/lastsurvivor

#> What to do if time runs out
execute if score $Timer.Seconds Statues.Data matches ..1 if score $Timer.Ticks Statues.Data matches ..0 run function statues:ingame/win_conditions/timeout

#> Detect when there's not longer a survivor alive and there's at least one winner
execute if score $Ingame.Alive Statues.Data matches 0 if entity @a[tag=win] run function statues:ingame/win_conditions/survivorvictory

#> Detect when no survivors are alive and that no one has won
execute if score $Ingame.Alive Statues.Data matches 0 unless entity @a[tag=win] run function statues:ingame/win_conditions/monstervictory

#> Function that detects when the monster leaves
execute unless entity @e[team=Monster] if score $Status Statues.Data matches 3 run function statues:ingame/win_conditions/monsterexit

