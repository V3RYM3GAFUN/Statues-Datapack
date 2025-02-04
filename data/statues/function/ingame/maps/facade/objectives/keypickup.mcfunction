tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"translate":"statues.game.facade.objective.keypickup","color":"aqua"}]

execute as @a[team=!Monster] at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1

execute if score $Objective Statues.DynamicData matches 0 run scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.FindBackupGeneratorKey Statues.GameEventEnum
execute if score $Objective Statues.DynamicData matches 3 run scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.FindLabKey Statues.GameEventEnum
execute if score $Objective Statues.DynamicData matches 7 run scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.FindHighClassKey Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective

scoreboard players add $Objective Statues.DynamicData 1
scoreboard players add $CompassSelector Statues.DynamicData 1

scoreboard players add $Timer.Seconds Statues.DynamicData 60