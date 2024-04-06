tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has found the book!","color":"aqua"}]

execute as @a[team=!Monster] at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1 