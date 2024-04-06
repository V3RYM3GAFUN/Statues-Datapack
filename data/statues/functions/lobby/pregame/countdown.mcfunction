execute store result bossbar countdown value run scoreboard players get $Countdown.Bossbar Statues.Data
execute if score $Countdown.Ticks Statues.Data matches 1.. if score $Status Statues.Data matches 1 run bossbar set countdown visible true
execute if score $Countdown.Ticks Statues.Data matches ..299 run bossbar set countdown visible false

scoreboard players remove $Countdown.Ticks Statues.Data 1
bossbar set countdown players @a
scoreboard players operation $Countdown.Seconds Statues.Data = $Countdown.Ticks Statues.Data
scoreboard players operation $Countdown.Seconds Statues.Data /= $20 Statues.Data
scoreboard players operation $Countdown.Bossbar Statues.Data = $Countdown.Seconds Statues.Data
scoreboard players remove $Countdown.Bossbar Statues.Data 14

execute if score $Countdown.Ticks Statues.Data matches 900 run tellraw @a {"text": "Game will start in 30 seconds!", "color": "gold"}
execute if score $Countdown.Ticks Statues.Data matches 900 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.Data matches 700 run tellraw @a {"text": "20 seconds left before game starts!","color": "gold"}
execute if score $Countdown.Ticks Statues.Data matches 700 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.Data matches 500 run tellraw @a {"text": "10 seconds left before game starts!","color": "gold"}
execute if score $Countdown.Ticks Statues.Data matches 500 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.Data matches 400 run tellraw @a {"text": "5 seconds left before game starts!","color": "gold"}
execute if score $Countdown.Ticks Statues.Data matches 400 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.Data matches 380 run tellraw @a {"text": "4 seconds left before game starts!","color": "gold"}
execute if score $Countdown.Ticks Statues.Data matches 380 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.Data matches 360 run tellraw @a {"text": "3 seconds left before game starts!","color": "gold"}
execute if score $Countdown.Ticks Statues.Data matches 360 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.Data matches 340 run tellraw @a {"text": "2 seconds left before game starts!","color": "gold"}
execute if score $Countdown.Ticks Statues.Data matches 340 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.Data matches 320 run tellraw @a {"text": "1 seconds left before game starts!","color": "gold"}
execute if score $Countdown.Ticks Statues.Data matches 320 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.75

execute if score $Countdown.Ticks Statues.Data matches 300 run function statues:lobby/pregame/start

execute if score $Countdown.Ticks Statues.Data matches 200 run tellraw @a [{"text": "Selected map: ["},{"selector":"@e[tag=mapvote_winner,limit=1]","bold":true},{"text": "]"}]
execute as @a at @s if score $Countdown.Ticks Statues.Data matches 200 run playsound block.note_block.chime master @s ~ ~ ~ 0.7 1

execute if score $Countdown.Ticks Statues.Data matches 100 run tellraw @a {"text": "Teleporting in 5 seconds...","color": "aqua"}
execute as @a at @s if score $Countdown.Ticks Statues.Data matches 100 run playsound block.note_block.pling master @s ~ ~ ~ 0.7 1.5
execute if score $Countdown.Ticks Statues.Data matches 100 run kill @e[tag=mapvote]

execute if score $Countdown.Ticks Statues.Data matches 0 run scoreboard players set $Status Statues.Data 3

execute if score $Countdown.Ticks Statues.Data matches 0 if score $Map Statues.Data matches 0 run function statues:ingame/maps/facade/activate
execute if score $Countdown.Ticks Statues.Data matches 0 if score $Map Statues.Data matches 1 run function statues:ingame/maps/lockdown/activate
execute if score $Countdown.Ticks Statues.Data matches 0 if score $Map Statues.Data matches 2 run function statues:ingame/maps/origins/activate