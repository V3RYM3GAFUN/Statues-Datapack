scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.NoSurvivors Statues.GameEventEnum
function statues:reset

title @a title {"text": "Monsters win!","color": "red"}
title @a subtitle {"text": "All survivors are dead."}

execute as @a at @s run playsound block.sculk_shrieker.shriek master @a ~ ~ ~ 0.75 0.75