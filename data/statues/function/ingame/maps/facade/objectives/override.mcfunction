execute as @e[type=minecraft:interaction,tag=objective_facade_override] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_override] run data modify entity @s text set value "{\"text\":\"\"}"
execute as @e[type=text_display,tag=objective_facade_override] run data modify entity @s background set value 0

scoreboard players set $CompassSelector Statues.DynamicData 6
scoreboard players set $Objective Statues.DynamicData 6

execute as @a[team=!Monster] at @s run playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~ ~ 1 2

execute as @n[tag=machine_sas,tag=sas_1x2,type=marker] at @s positioned ~ ~-1 ~-3 as @e[dx=0,dy=1,dz=6,type=marker,tag=machine_sas_doordx] at @s run function statues:mechanics/sas/dx/1x2/open

execute at @e[tag=objective_facade_override] run function statues:utils/button_crimson_to_warped

scoreboard players add $Timer.Seconds Statues.DynamicData 300

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.PressEmergencyOverride Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective