
#> Clear Text Displays for "Main Power"
execute as @e[tag=objective_facade_power] run data modify entity @s text set value "{text:''}"
execute as @e[type=text_display,tag=objective_facade_power] run data modify entity @s background set value 0

#> Announce objective completion
title @a times 5t 3s 25t
title @a title ""
title @a subtitle {"text": "Main power restored!","color": "aqua"}

#> Detect objective buttons being triggered

execute at @e[tag=objective_facade_power] run function statues:utils/button_crimson_to_warped
execute at @e[tag=elevator_button_facade_power] run function statues:utils/button_blackstone_to_crimson
execute as @e[tag=objective_reset,tag=elevator_room_freight] at @s run data merge entity @s {brightness:{block:15,sky:0}}

function statues:ingame/mechanics/power_doors/open
function statues:ingame/mechanics/lights/lights_on

time set 18000
weather rain

scoreboard players set $Objective Statues.DynamicData 7
scoreboard players set $CompassSelector Statues.DynamicData 7

scoreboard players add $Timer.Seconds Statues.DynamicData 300

scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Facade.TurnOnPower Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective