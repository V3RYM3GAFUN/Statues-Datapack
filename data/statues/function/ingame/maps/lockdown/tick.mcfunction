execute unless function statues:feature_flags/check_map_tick_flags run return fail

#> Objective tracking


#> Override button detection
execute if score $Objective Statues.DynamicData matches 0 at @e[tag=objective_lockdown_override,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/lockdown/objectives/override


#> Main power detection
execute if score $Objective Statues.DynamicData matches 0 at @e[tag=objective_lockdown_power,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/lockdown/objectives/main_power