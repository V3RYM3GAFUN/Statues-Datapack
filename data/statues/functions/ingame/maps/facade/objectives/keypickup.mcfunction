tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has found the key!","color":"aqua"}]

execute as @a[team=!Monster] at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1 

scoreboard players add $Objective Statues.Data 1
scoreboard players add $CompassSelector Statues.Data 1
