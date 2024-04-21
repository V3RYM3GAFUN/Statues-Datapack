title @a title {"text": "Survivors win!","color": "aqua"}
title @a subtitle {"text": "No monsters are left to play."}

scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.NoMonsters Statues.GameEventEnum
function statues:reset

execute as @a at @s run playsound ui.cartography_table.take_result master @a ~ ~ ~ 1 0.75