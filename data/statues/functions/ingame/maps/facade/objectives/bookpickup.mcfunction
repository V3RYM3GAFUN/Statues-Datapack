tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has found the book!","color":"aqua"}]

execute as @a[team=!Monster] at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1 

scoreboard players set $Objective Statues.Data 10
scoreboard players set $CompassSelector Statues.Data 10

scoreboard players add $Timer.Seconds Statues.Data 60