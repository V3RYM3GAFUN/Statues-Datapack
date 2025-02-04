tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"translate":"statues.game.facade.objective.bookpickup","color":"aqua"}]

execute as @a[team=!Monster] at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1

scoreboard players set $Objective Statues.DynamicData 10
scoreboard players set $CompassSelector Statues.DynamicData 10

scoreboard players add $Timer.Seconds Statues.DynamicData 60

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.FindConfidentialBook Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective