execute as @e[type=minecraft:interaction,tag=objective_facade_genpower] run data merge entity @s {height:0}

execute as @e[type=text_display,tag=objective_facade_genpower] run data modify entity @s text set value "{\"text\":\"\"}"
execute as @e[type=text_display,tag=objective_facade_genpower] run data modify entity @s background set value 0

execute as @a[team=!Monster] at @s run playsound minecraft:ui.loom.take_result master @s ~ ~ ~ 1 0

function statues:ingame/maps/common/major_objective

#> Unlock the trapdoors in vents
# South
setblock 25 87 27 minecraft:redstone_block
setblock -25 87 27 minecraft:redstone_block

# North
setblock -25 87 -23 minecraft:redstone_block
setblock 25 87 -23 minecraft:redstone_block

execute at @e[tag=objective_facade_genpower] run function statues:utils/button_crimson_to_warped
execute at @e[tag=elevator_button_facade_genpower] run function statues:utils/button_blackstone_to_crimson

scoreboard players set $CompassSelector Statues.DynamicData 3
scoreboard players set $Objective Statues.DynamicData 3

scoreboard players add $Timer.Seconds Statues.DynamicData 300

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.StartBackupGenerator Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective