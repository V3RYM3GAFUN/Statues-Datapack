execute as @e[type=minecraft:interaction,tag=objective_facade_override] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_override] run data modify entity @s text set value "{'text':''}"

scoreboard players set $CompassSelector Statues.DynamicData 6
scoreboard players set $Objective Statues.DynamicData 6

execute as @a[team=!Monster] at @s run playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~ ~ 1 2

fill -4 105 378 -4 106 378 air
fill -4 105 383 -4 106 383 air

execute at @e[tag=objective_facade_override] run function statues:utils/button_crimson_to_warped

scoreboard players add $Timer.Seconds Statues.DynamicData 300

# Temporary solution in the freight elevator
setblock 1 111 285 redstone_block

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.PressEmergencyOverride Statues.GameEventEnum
function statues:game_events/complete_objective