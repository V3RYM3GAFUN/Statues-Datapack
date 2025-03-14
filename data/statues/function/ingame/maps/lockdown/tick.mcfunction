execute unless function statues:feature_flags/check_map_tick_flags run return fail

#> Objective tracking
# Fuel Objective
execute if score $Objective Statues.DynamicData matches 0 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.0","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 0 run data modify storage statues:data objective_floor set value 0

execute if score $Objective Statues.DynamicData matches 1 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.1","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 2 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.2","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 3 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.3","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 4 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.4","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 5 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.5","color":"aqua"}'

# Keycard 1 Objective
execute if score $Objective Statues.DynamicData matches 6 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.6","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 6 run data modify storage statues:data objective_floor set value 0

execute if score $Objective Statues.DynamicData matches 7 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.7","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 7 run data modify storage statues:data objective_floor set value -2

# Override
execute if score $Objective Statues.DynamicData matches 8 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.8","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 8 run data modify storage statues:data objective_floor set value -2

# Main Power Objective
execute if score $Objective Statues.DynamicData matches 9 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.9","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 9 run data modify storage statues:data objective_floor set value -4

# Keycard 2 Objective
execute if score $Objective Statues.DynamicData matches 10 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.10","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 10 run data modify storage statues:data objective_floor set value -2

execute if score $Objective Statues.DynamicData matches 11 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.11","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 11 run data modify storage statues:data objective_floor set value -3

# Code Objective
execute if score $Objective Statues.DynamicData matches 12 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.12","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 12 run data modify storage statues:data objective_floor set value -4

execute if score $Objective Statues.DynamicData matches 13 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.13","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 14 run data modify storage statues:data objective_floor set value -3

# Escape Objective
execute if score $Objective Statues.DynamicData matches 14 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.14","color":"aqua"}'
execute if score $Objective Statues.DynamicData matches 14 run data modify storage statues:data objective_floor set value 0

#> Override button detection
execute if score $Objective Statues.DynamicData matches 8 as @e[tag=objective_lockdown_override,type=minecraft:marker] at @s if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/lockdown/objectives/override

#> Main power detection
execute if score $Objective Statues.DynamicData matches 9 as @e[tag=objective_lockdown_power,type=minecraft:marker] at @s if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/lockdown/objectives/main_power

#> Escape detection
execute if score $Objective Statues.DynamicData matches 14 as @e[tag=objective_lockdown_escape,type=marker] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1 0.1 1 0 10 normal
execute if score $Objective Statues.DynamicData matches 14 as @e[tag=objective_lockdown_escape,type=marker] at @s positioned ~-1 ~ ~-1 if entity @a[team=Survivor,dx=2,dy=1,dz=2] run function statues:ingame/maps/lockdown/objectives/escape

execute as @a unless entity @s[team=!Monster,team=!Survivor] run function statues:ingame/maps/lockdown/tick_player

#> Countdown for monster spawn delay (before they can actually chase survivors)
execute if score $MonsterSpawnDelay Statues.DynamicData matches 1.. run function statues:ingame/maps/common/warptimer
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0.. unless score $ReplayWatching Statues.DynamicData matches 1 run scoreboard players remove $MonsterSpawnDelay Statues.DynamicData 1
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0.. if score $ReplayWatching Statues.DynamicData matches 1 unless score $ReplayFreeze Statues.DynamicData matches 1 run scoreboard players remove $MonsterSpawnDelay Statues.DynamicData 1
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0 run function statues:ingame/maps/lockdown/monsterspawn
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0 run bossbar set statues:warptimer visible false