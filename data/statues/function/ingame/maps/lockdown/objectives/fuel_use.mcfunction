# Clear Text display
execute as @a if predicate statues:lockdown/holding_fuel run data merge entity @n[tag=objective_lockdown_fuel,type=text_display] {text:'{"text":""}'}

# Put interaction out of the way
execute as @a if predicate statues:lockdown/holding_fuel run data modify entity @n[tag=objective_lockdown_fuel,type=interaction] height set value 0

# Sound cue
execute as @a[team=!Monster] run playsound minecraft:block.brewing_stand.brew neutral @s ~ ~ ~ 1 .8

# Progress the Objective
scoreboard players add $Objective Statues.DynamicData 1

# Trigger next objective once enough fuel has been used
execute if score $Objective Statues.DynamicData matches 6 run function statues:ingame/maps/lockdown/objectives/backup_power

# scoreboard players operation $ObjectiveKind Statues.GameEventData = $ObjectiveKind.Lockdown.FuelInput Statues.GameEventEnum
# function #statues:game_events/ingame/complete_objective