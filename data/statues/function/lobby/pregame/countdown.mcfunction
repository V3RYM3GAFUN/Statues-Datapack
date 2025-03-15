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

execute if score $Countdown.Ticks Statues.DynamicData matches 900 run tellraw @a {"translate": "statues.pregame.start.warning","with":[{"text":"30"}], "color": "gold"}
execute if score $Countdown.Ticks Statues.DynamicData matches 900 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 700 run tellraw @a {"translate": "statues.pregame.start.warning","with":[{"text":"20"}],"color": "gold"}
execute if score $Countdown.Ticks Statues.DynamicData matches 700 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 500 run tellraw @a {"translate": "statues.pregame.start.warning","with":[{"text":"10"}],"color": "gold"}
execute if score $Countdown.Ticks Statues.DynamicData matches 500 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 400 run tellraw @a {"translate": "statues.pregame.start.warning","with":[{"text":"5"}],"color": "gold"}
execute if score $Countdown.Ticks Statues.DynamicData matches 400 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 380 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 360 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 340 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 320 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.DynamicData matches 300 run function statues:lobby/pregame/start

execute if score $Countdown.Ticks Statues.DynamicData matches 200 run tellraw @a [{"translate": "statues.pregame.map.chosen","with":[{"text":"["}]},{"selector":"@e[tag=mapvote_winner,limit=1]","bold":true},{"text": "]"}]
execute as @a at @s if score $Countdown.Ticks Statues.DynamicData matches 200 run playsound block.note_block.chime master @s ~ ~ ~ 0.7 1

execute if score $Countdown.Ticks Statues.DynamicData matches 100 run tellraw @a {"translate": "statues.pregame.teleport.warning","color": "aqua"}
execute as @a at @s if score $Countdown.Ticks Statues.DynamicData matches 100 run playsound block.note_block.pling master @s ~ ~ ~ 0.7 1.5
execute if score $Countdown.Ticks Statues.DynamicData matches 100 run kill @e[tag=mapvote]

execute if score $Countdown.Ticks Statues.DynamicData matches 0 run scoreboard players set $Status Statues.DynamicData 3
execute if score $Countdown.Ticks Statues.DynamicData matches 0 run function #statues:game_events/ingame/game_start

execute if score $Countdown.Ticks Statues.DynamicData matches 200 if score $Map Statues.DynamicData matches 0 in statues:maps/facade run forceload add 95 79 -112 -80
execute if score $Countdown.Ticks Statues.DynamicData matches 0 if score $Map Statues.DynamicData matches 0 in statues:maps/facade run function statues:ingame/maps/facade/activate

execute if score $Countdown.Ticks Statues.DynamicData matches 20 if score $Map Statues.DynamicData matches 1 in statues:maps/lockdown run forceload add 97 81 -115 -110
execute if score $Countdown.Ticks Statues.DynamicData matches 0 if score $Map Statues.DynamicData matches 1 in statues:maps/lockdown run function statues:ingame/maps/lockdown/activate

execute if score $Countdown.Ticks Statues.DynamicData matches 0 if score $Map Statues.DynamicData matches 2 in statues:maps/origins run function statues:ingame/maps/origins/activate