execute unless function statues:feature_flags/check_map_tick_flags run return fail

# execute if score abilities Statues.FeatureFlags matches 1 run function statues:ingame/maps/facade/ability_tick

#> Objective tracking
# Backup genkey
execute as @a if score $Objective Statues.DynamicData matches 0 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.0","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
execute as @a if score $Objective Statues.DynamicData matches 1 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.1","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
# Backup Power
execute as @a if score $Objective Statues.DynamicData matches 2 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.2","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
# Labkey
execute as @a if score $Objective Statues.DynamicData matches 3 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.3","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
execute as @a if score $Objective Statues.DynamicData matches 4 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.4","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
# Override
execute as @a if score $Objective Statues.DynamicData matches 5 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.5","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
# Main Power
execute as @a if score $Objective Statues.DynamicData matches 6 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.6","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
# High Class Key
execute as @a if score $Objective Statues.DynamicData matches 7 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.7","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
execute as @a if score $Objective Statues.DynamicData matches 8 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.8","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
# Book
execute as @a if score $Objective Statues.DynamicData matches 9 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.9","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
# Escape
execute as @a if score $Objective Statues.DynamicData matches 10 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.10","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
execute as @a if score $Objective Statues.DynamicData matches 11 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.facade.objective.actionbar.11","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}

#> Generator power detection
execute if score $Objective Statues.DynamicData matches 2 at @e[tag=objective_facade_genpower,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/genpower

#> Emergency override button press
execute if score $Objective Statues.DynamicData matches 5 at @e[tag=objective_facade_override,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/override

#> Power on detection
execute if score $Objective Statues.DynamicData matches 6 at @e[tag=objective_facade_power,type=minecraft:marker] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/main_power
# Core ticking
execute if score $Objective Statues.DynamicData matches 7.. run scoreboard players remove $Core.Ticks Statues.DynamicData 1
execute if score $Core.Ticks Statues.DynamicData matches 0 run playsound minecraft:entity.warden.nearby_closer master @a -5 56 -8 3 0
execute if score $Core.Ticks Statues.DynamicData matches ..0 run scoreboard players set $Core.Ticks Statues.DynamicData 120

execute as @a unless entity @s[team=!Monster,team=!Survivor] run function statues:ingame/maps/facade/tick_player

# Escape detection
execute if score $Objective Statues.DynamicData matches 11 as @e[tag=objective_facade_book,type=marker,x=0] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1 0.1 1 0 10 normal
execute if score $Objective Statues.DynamicData matches 11 as @e[tag=objective_facade_book,type=marker,x=0] at @s positioned ~-1 ~ ~-1 if entity @a[team=Survivor,dx=2,dy=1,dz=2] run function statues:ingame/maps/facade/objectives/escape

#> Force monsters who haven't chosen a monster to spawn with a random choice
execute if score $MonsterSpawnDelay Statues.DynamicData matches 10 as @e[type=marker,tag=facade_monster_choice,sort=random,limit=1,x=0] at @s if block ~ ~ ~ light_weighted_pressure_plate run tp @r[team=Monster,tag=!monster_chosen] ~ ~ ~

#> Countdown for monster spawn delay (before they can actually chase survivors)
execute if score $MonsterSpawnDelay Statues.DynamicData matches 1.. run function statues:ingame/maps/common/warptimer
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0.. unless score $ReplayWatching Statues.DynamicData matches 1 run scoreboard players remove $MonsterSpawnDelay Statues.DynamicData 1
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0.. if score $ReplayWatching Statues.DynamicData matches 1 unless score $ReplayFreeze Statues.DynamicData matches 1 run scoreboard players remove $MonsterSpawnDelay Statues.DynamicData 1
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0 run function statues:ingame/maps/facade/monsterspawn
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0 run bossbar set statues:warptimer visible false

#execute if score $Objective Statues.DynamicData matches 0 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.0","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 0 run data modify storage statues:data objective_floor set value -1
#execute if score $Objective Statues.DynamicData matches 1 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.1","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 1 run data modify storage statues:data objective_floor set value 0
#execute if score $Objective Statues.DynamicData matches 2 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.2","color":"gold"}'
#execute if score $Objective Statues.DynamicData matches 2 run data modify storage statues:data objective_floor set value 0
#execute if score $Objective Statues.DynamicData matches 3 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.3","color":"green"}'
#execute if score $Objective Statues.DynamicData matches 3 run data modify storage statues:data objective_floor set value -1
#execute if score $Objective Statues.DynamicData matches 4 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.4","color":"white"}'
#execute if score $Objective Statues.DynamicData matches 4 run data modify storage statues:data objective_floor set value -1
#execute if score $Objective Statues.DynamicData matches 5 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.5","color":"red"}'
#execute if score $Objective Statues.DynamicData matches 5 run data modify storage statues:data objective_floor set value -1
#execute if score $Objective Statues.DynamicData matches 6 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.6","color":"yellow"}'
#execute if score $Objective Statues.DynamicData matches 6 run data modify storage statues:data objective_floor set value -4
#execute if score $Objective Statues.DynamicData matches 7 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.7","color":"white"}'
#execute if score $Objective Statues.DynamicData matches 7 run data modify storage statues:data objective_floor set value -3
#execute if score $Objective Statues.DynamicData matches 8 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.8","color":"white"}'
#execute if score $Objective Statues.DynamicData matches 8 run data modify storage statues:data objective_floor set value 1
#execute if score $Objective Statues.DynamicData matches 9 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.9","color":"gold","bold":true}'
#execute if score $Objective Statues.DynamicData matches 9 run data modify storage statues:data objective_floor set value 1
#execute if score $Objective Statues.DynamicData matches 10 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.10","color":"dark_red","bold":true}'
#execute if score $Objective Statues.DynamicData matches 10 run data modify storage statues:data objective_floor set value 1
#execute if score $Objective Statues.DynamicData matches 11 run data modify storage statues:data objective_text set value '{"translate":"statues.text.facade.objective.actionbar.11","color":"red","bold":true}'
#execute if score $Objective Statues.DynamicData matches 11 run data modify storage statues:data objective_floor set value 1