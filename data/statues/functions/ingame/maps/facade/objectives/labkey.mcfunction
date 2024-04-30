execute as @e[type=minecraft:interaction,tag=objective_facade_labkey] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_labkey] run data modify entity @s text set value "{'text':''}"
execute as @e[type=text_display,tag=objective_facade_labkey] run data modify entity @s background set value 0

execute as @a[team=!Monster] at @s run playsound minecraft:block.vault.insert_item master @a ~ ~ ~ 1 1.5

clear @a iron_ingot{facade_labkey_item:1b} 1

time set 10000

scoreboard players set $Objective Statues.DynamicData 5
scoreboard players set $CompassSelector Statues.DynamicData 5

scoreboard players add $Timer.Seconds Statues.DynamicData 300

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.UnlockLabDoors Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective