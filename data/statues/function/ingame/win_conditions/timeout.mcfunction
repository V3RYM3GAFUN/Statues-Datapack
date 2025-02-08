title @a title {"translate": "statues.game.monster.victory","color": "red"}
title @a subtitle {"translate": "statues.game.subtitle.timeout"}

scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.NoTime Statues.GameEventEnum
execute unless score $ReplayWatching Statues.DynamicData matches 1 run function statues:reset

execute as @a at @s run playsound minecraft:entity.villager.work_cartographer master @a ~ ~ ~ 1 0.75