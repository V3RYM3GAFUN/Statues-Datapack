execute as @e[type=minecraft:interaction,tag=objective_facade_genkey] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_genkey] run data modify entity @s text set value "{'text':''}"
execute as @e[type=text_display,tag=objective_facade_genkey] run data modify entity @s background set value 0

execute as @a[team=!Monster] at @s run playsound minecraft:block.vault.insert_item master @s ~ ~ ~ 1 1.5

scoreboard players set $Objective Statues.DynamicData 2
scoreboard players set $CompassSelector Statues.DynamicData 2

scoreboard players add $Timer.Seconds Statues.DynamicData 300

clear @a iron_ingot{facade_genkey_item:1b} 1

time set 10000

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.UnlockBackupGenerator Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective