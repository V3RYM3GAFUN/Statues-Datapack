tellraw @a[team=!Monster] [{"translate":"statues.game.lockdown.objective.keypickup","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]

execute as @a[team=!Monster] at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1

execute if score $Objective Statues.DynamicData matches 0 run scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Lockdown.FindKeycard1 Statues.GameEventEnum
execute if score $Objective Statues.DynamicData matches 0 run scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Lockdown.FindKeycard2 Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective

scoreboard players add $Objective Statues.DynamicData 1
scoreboard players add $CompassSelector Statues.DynamicData 1

scoreboard players add $Timer.Seconds Statues.DynamicData 60