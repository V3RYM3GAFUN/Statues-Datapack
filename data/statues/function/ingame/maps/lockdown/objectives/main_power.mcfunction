#> Clear Text Displays for "Main Power"
execute as @e[tag=objective_lockdown_power] run data modify entity @s text set value "{\"text\":\"\"}"
execute as @e[type=text_display,tag=objective_lockdown_power] run data modify entity @s background set value 0

#> Announce objective completion
title @a times 5t 3s 25t
title @a title ""
title @a subtitle {"translate": "statues.game.lockdown.objective.mainpower","color": "aqua"}

#> Detect objective buttons being triggered

execute at @e[tag=objective_lockdown_power] run function statues:utils/button_crimson_to_warped
execute at @e[tag=elevator_button_lockdown_power] run function statues:utils/button_blackstone_to_crimson
execute as @e[tag=objective_reset,tag=elevator_room_freight] at @s run data merge entity @s {brightness:{block:15,sky:0}}

function statues:ingame/maps/common/major_objective
function statues:mechanics/power_doors/open
function statues:mechanics/lights/lights_on

scoreboard players set $Objective Statues.DynamicData 7
scoreboard players set $CompassSelector Statues.DynamicData 7

scoreboard players add $Timer.Seconds Statues.DynamicData 300

# scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.lockdown.TurnOnPower Statues.GameEventEnum
function #statues:game_events/ingame/complete_objective