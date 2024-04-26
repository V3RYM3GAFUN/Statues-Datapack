scoreboard players remove $Countdown.Ticks Statues.DynamicData 1
scoreboard players operation $Countdown.Seconds Statues.TempData = $Countdown.Ticks Statues.DynamicData
scoreboard players operation $Countdown.Seconds Statues.TempData /= $20 Statues.Constants
scoreboard players operation $Countdown.Bossbar Statues.TempData = $Countdown.Seconds Statues.TempData
scoreboard players remove $Countdown.Bossbar Statues.TempData 14
execute store result storage statues:data remaining_seconds int 1 run scoreboard players get $Countdown.Bossbar Statues.TempData
function statues:lobby/pregame/countdown_bossbar with storage statues:data
execute store result bossbar statues:countdown value run scoreboard players get $Countdown.Bossbar Statues.TempData
execute if score $Countdown.Ticks Statues.DynamicData matches 1.. if score $Status Statues.DynamicData matches 1 run bossbar set statues:countdown visible true
execute if score $Countdown.Ticks Statues.DynamicData matches ..299 run bossbar set statues:countdown visible false
bossbar set statues:countdown players @a

execute if score $Countdown.Ticks Statues.DynamicData matches 900 run tellraw @a {"text": "Game will start in 30 seconds!", "color": "gold"}
execute if score $Countdown.Ticks Statues.DynamicData matches 900 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 700 run tellraw @a {"text": "20 seconds left before game starts!","color": "gold"}
execute if score $Countdown.Ticks Statues.DynamicData matches 700 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 500 run tellraw @a {"text": "10 seconds left before game starts!","color": "gold"}
execute if score $Countdown.Ticks Statues.DynamicData matches 500 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 400 run tellraw @a {"text": "5 seconds left before game starts!","color": "gold"}
execute if score $Countdown.Ticks Statues.DynamicData matches 400 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 380 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 360 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 340 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 320 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 300 run function statues:lobby/pregame/start

execute if score $Countdown.Ticks Statues.DynamicData matches 200 run tellraw @a [{"text": "Selected map: ["},{"selector":"@e[tag=mapvote_winner,limit=1]","bold":true},{"text": "]"}]
execute as @a at @s if score $Countdown.Ticks Statues.DynamicData matches 200 run playsound block.note_block.chime master @s ~ ~ ~ 0.7 1

execute if score $Countdown.Ticks Statues.DynamicData matches 100 run tellraw @a {"text": "Teleporting in 5 seconds...","color": "aqua"}
execute as @a at @s if score $Countdown.Ticks Statues.DynamicData matches 100 run playsound block.note_block.pling master @s ~ ~ ~ 0.7 1.5
execute if score $Countdown.Ticks Statues.DynamicData matches 100 run kill @e[tag=mapvote]

execute if score $Countdown.Ticks Statues.DynamicData matches 0 run scoreboard players set $Status Statues.DynamicData 3
execute if score $Countdown.Ticks Statues.DynamicData matches 0 run function statues:game_events/game_start

execute if score $Countdown.Ticks Statues.DynamicData matches 0 if score $Map Statues.DynamicData matches 0 run function statues:ingame/maps/facade/activate
execute if score $Countdown.Ticks Statues.DynamicData matches 200 if score $Map Statues.DynamicData matches 0 run forceload add 54 257 -82 394

execute if score $Countdown.Ticks Statues.DynamicData matches 0 if score $Map Statues.DynamicData matches 1 run function statues:ingame/maps/lockdown/activate

execute if score $Countdown.Ticks Statues.DynamicData matches 0 if score $Map Statues.DynamicData matches 2 run function statues:ingame/maps/origins/activate