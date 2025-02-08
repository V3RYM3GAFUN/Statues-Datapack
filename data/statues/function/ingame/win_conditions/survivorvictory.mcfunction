execute if score $Objective Statues.DynamicData matches 11 run scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.Escape Statues.GameEventEnum
execute if score $Objective Statues.DynamicData matches 11 run function #statues:game_events/ingame/complete_objective

scoreboard players operation $EndCause Statues.GameEventData = $GameEndCause.SurvivorsEscaped Statues.GameEventEnum

execute if score $Map Statues.DynamicData matches 0 run advancement grant @a[team=Survivor] only statues:game/maps/facade/win_as_survivor
execute if score $Map Statues.DynamicData matches 1 run advancement grant @a[team=Survivor] only statues:game/maps/lockdown/win_as_survivor

execute unless score $ReplayWatching Statues.DynamicData matches 1 run function statues:reset

title @a title {"translate": "statues.game.survivor.victory","color": "aqua"}

execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.5 0.75