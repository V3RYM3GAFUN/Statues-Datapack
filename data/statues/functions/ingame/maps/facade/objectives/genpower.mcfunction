execute as @e[type=minecraft:interaction,tag=objective_facade_genpower] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_genpower] run data modify entity @s text set value "{'text':''}"

execute as @a[team=!Monster] at @s run playsound minecraft:ui.loom.take_result master @a ~ ~ ~ 1 0

fill -4 112 365 -3 113 365 air
fill 5 112 365 6 113 365 air

execute at @e[tag=objective_facade_genpower] run function statues:utils/button_crimson_to_warped

scoreboard players set $CompassSelector Statues.DynamicData 3
scoreboard players set $Objective Statues.DynamicData 3

scoreboard players add $Timer.Seconds Statues.DynamicData 300

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.StartBackupGenerator Statues.GameEventEnum
function statues:game_events/complete_objective