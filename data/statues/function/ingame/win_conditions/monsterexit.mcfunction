title @a title {"translate": "statues.game.survivor.victory","color": "aqua"}
title @a subtitle {"translate": "statues.game.subtitle.monsterexit"}

scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.NoMonsters Statues.GameEventEnum
execute unless score $ReplayWatching Statues.DynamicData matches 1 run function statues:reset

execute as @a at @s run playsound ui.cartography_table.take_result master @a ~ ~ ~ 1 0.75