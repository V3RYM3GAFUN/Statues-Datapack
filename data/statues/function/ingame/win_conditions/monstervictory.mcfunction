scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.NoSurvivors Statues.GameEventEnum
function statues:reset

title @a title {"translate": "statues.game.monster.victory","color": "red"}
title @a subtitle {"translate": "statues.game.subtitle.monstervictory"}

execute as @a at @s run playsound block.sculk_shrieker.shriek master @a ~ ~ ~ 0.75 0.75