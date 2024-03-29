execute if entity @a[team=!Survivor,tag=!Win] run title @a title {"text": "Monsters win!","color": "red"}
execute if entity @a[team=!Survivor,tag=!Win] run title @a subtitle {"text": "All survivors are dead."}

execute if entity @a[team=!Survivor,tag=!Win] run function statues:reset

execute if entity @a[team=!Survivor,tag=!Win] as @a at @s run playsound block.sculk_shrieker.shriek master @a ~ ~ ~ 0.75 0.75