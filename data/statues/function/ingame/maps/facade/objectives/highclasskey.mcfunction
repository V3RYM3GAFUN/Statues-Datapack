execute at @e[type=minecraft:interaction,tag=objective_facade_highclasskey] run fill ~ ~ ~ ~ ~1 ~ air
fill -21 108 15 -21 109 15 glass_pane
fill 21 108 15 21 109 15 glass_pane

execute as @e[type=minecraft:interaction,tag=objective_facade_highclasskey] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_highclasskey] run data modify entity @s text set value '{"text":""}'
execute as @e[type=text_display,tag=objective_facade_highclasskey] run data modify entity @s background set value 0

scoreboard players set $Objective Statues.DynamicData 9

execute as @a[team=!Monster] at @s run playsound minecraft:block.vault.insert_item master @a ~ ~ ~ 1 1.5

clear @a iron_ingot[custom_data~{facade_highclass_item:1b}] 1

weather thunder

scoreboard players add $Timer.Seconds Statues.DynamicData 300

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.UnlockHighClassOffices Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective