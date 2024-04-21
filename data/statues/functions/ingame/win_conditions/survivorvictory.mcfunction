execute if score $Objective Statues.DynamicData matches 11 run scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.Escape Statues.GameEventEnum
execute if score $Objective Statues.DynamicData matches 11 run function statues:game_events/complete_objective

scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.SurvivorsEscaped Statues.GameEventEnum
function statues:reset

title @a title {"text": "Survivors win!","color": "aqua"}

execute as @a at @s run playsound ui.toast.challenge_complete master @a ~ ~ ~ 0.5 0.75