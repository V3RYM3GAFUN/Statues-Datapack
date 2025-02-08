scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.NoSurvivors Statues.GameEventEnum
execute unless score $ReplayWatching Statues.DynamicData matches 1 run function statues:reset

execute if score $Map Statues.DynamicData matches 0 run advancement grant @a[team=Survivor] only statues:game/maps/facade/win_as_monster
execute if score $Map Statues.DynamicData matches 1 run advancement grant @a[team=Survivor] only statues:game/maps/lockdown/win_as_monster

title @a title {"translate": "statues.game.monster.victory","color": "red"}
title @a subtitle {"translate": "statues.game.subtitle.monstervictory"}

execute as @a at @s run playsound block.sculk_shrieker.shriek master @a ~ ~ ~ 0.75 0.75