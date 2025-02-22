execute as @e[type=minecraft:interaction,tag=objective_facade_override] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_override] run data modify entity @s text set value "{\"text\":\"\"}"
execute as @e[type=text_display,tag=objective_facade_override] run data modify entity @s background set value 0

scoreboard players set $CompassSelector Statues.DynamicData 6
scoreboard players set $Objective Statues.DynamicData 6

execute as @a[team=!Monster] at @s run playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~ ~ 1 2

fill -5 78 48 -5 79 48 air
fill -5 78 53 -5 79 53 air

execute at @e[tag=objective_facade_override] run function statues:utils/button_crimson_to_warped

scoreboard players add $Timer.Seconds Statues.DynamicData 300

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.PressEmergencyOverride Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective