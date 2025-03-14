tellraw @a[team=!Monster] [{"translate":"statues.game.lockdown.objective.fuelpickup","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]

execute as @a[team=!Monster] at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Lockdown.FindFuel Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective