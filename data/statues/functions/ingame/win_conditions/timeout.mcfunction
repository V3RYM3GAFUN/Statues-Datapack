title @a title {"text": "Monsters win!","color": "red"}
title @a subtitle {"text": "The time ran out."}

scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.NoTime Statues.GameEventEnum
function statues:reset

execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @a ~ ~ ~ 1 0.75