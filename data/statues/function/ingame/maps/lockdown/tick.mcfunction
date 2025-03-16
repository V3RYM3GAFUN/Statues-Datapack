execute unless function statues:feature_flags/check_map_tick_flags run return fail

#> Intro "cutscene" - 19 sec (380 ticks)
execute if score $Timer.Ticks Statues.TempData matches 379 as @a at @s run playsound statues:game.lockdown.intro neutral @a ~ ~ ~ 1 1
execute if score $Timer.Ticks Statues.TempData matches 1.. run scoreboard players remove $Timer.Ticks Statues.TempData 1
execute if score $Timer.Ticks Statues.TempData matches 20.. run effect give @a[team=Survivor,tag=class_selected] slowness 1 5 true
execute if score $Timer.Ticks Statues.TempData matches 20 run function statues:mechanics/lights/lights_off

#> Objective tracking
# Fuel Objective
execute as @a if score $Objective Statues.DynamicData matches 0 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.0","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"0/6","color": "gold"}]}
execute as @a if score $Objective Statues.DynamicData matches 1 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.0","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"1/6","color": "gold"}]}
execute as @a if score $Objective Statues.DynamicData matches 2 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.0","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"2/6","color": "gold"}]}
execute as @a if score $Objective Statues.DynamicData matches 3 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.0","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"3/6","color": "gold"}]}
execute as @a if score $Objective Statues.DynamicData matches 4 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.0","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"4/6","color": "gold"}]}
execute as @a if score $Objective Statues.DynamicData matches 5 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.0","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true},{"text":"5/6","color": "gold"}]}

# Keycard 1 Objective
execute as @a if score $Objective Statues.DynamicData matches 6 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.1","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true}]}
execute as @a if score $Objective Statues.DynamicData matches 7 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.2","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true}]}

# Override
execute as @a if score $Objective Statues.DynamicData matches 8 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.3","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true}]}

# Main Power
execute as @a if score $Objective Statues.DynamicData matches 9 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.4","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true}]}

# Keycard 2
execute as @a if score $Objective Statues.DynamicData matches 10 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.5","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true}]}
execute as @a if score $Objective Statues.DynamicData matches 11 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.6","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true}]}

# Code
execute as @a if score $Objective Statues.DynamicData matches 12 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.7","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true}]}
execute as @a if score $Objective Statues.DynamicData matches 13 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.8","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true}]}

# Escape
execute as @a if score $Objective Statues.DynamicData matches 14 unless entity @s[team=!Survivor,tag=!dev_always_show_floor_objective] run title @s actionbar {"translate":"statues.text.lockdown.objective.actionbar.9","color":"aqua","with": [{"translate":"statues.text.objective","color": "white","bold":true}]}


#> Override button detection
execute if score $Objective Statues.DynamicData matches 8 as @e[tag=objective_lockdown_override,type=minecraft:marker,x=0] at @s if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/lockdown/objectives/override

#> Main power detection
execute if score $Objective Statues.DynamicData matches 9 as @e[tag=objective_lockdown_power,type=minecraft:marker,x=0] at @s if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/lockdown/objectives/main_power
# Core ticking
execute if score $Objective Statues.DynamicData matches 10.. run scoreboard players remove $Core.Ticks Statues.DynamicData 1
execute if score $Core.Ticks Statues.DynamicData matches 0 run playsound minecraft:entity.warden.nearby_closer master @a 0 68 0 3 0
execute if score $Core.Ticks Statues.DynamicData matches ..0 run scoreboard players set $Core.Ticks Statues.DynamicData 120

#> Escape detection
execute if score $Objective Statues.DynamicData matches 14 as @e[tag=objective_lockdown_escape,type=marker,x=0] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1 0.1 1 0 10 normal
execute if score $Objective Statues.DynamicData matches 14 as @e[tag=objective_lockdown_escape,type=marker,x=0] at @s run setblock ~ ~-1 ~ light[level=15]
execute if score $Objective Statues.DynamicData matches 14 as @e[tag=objective_lockdown_escape,type=marker,x=0] at @s positioned ~-1 ~ ~-1 if entity @a[team=Survivor,dx=2,dy=1,dz=2] run function statues:ingame/maps/lockdown/objectives/escape

# Prevent Monsters from exiting the map
execute if score $Objective Statues.DynamicData matches 14 at @e[tag=big_door,tag=objective_lockdown_code,limit=2,type=marker,x=0] as @a[team=Monster,dx=0,dy=3,dz=10] at @s run tp @s ~-1.5 ~ ~
execute if score $Objective Statues.DynamicData matches 14 at @e[tag=small_door,tag=objective_lockdown_code,limit=1,type=marker,x=0] as @a[team=Monster,dx=12,dy=3,dz=0] at @s run tp @s ~ ~ ~-1.5

#> Force monsters who haven't chosen a monster to spawn with a random choice
execute if score $MonsterSpawnDelay Statues.DynamicData matches 10 as @e[type=marker,tag=lockdown_monster_choice,sort=random,limit=1] at @s if block ~ ~ ~ light_weighted_pressure_plate run tp @r[team=Monster,tag=!monster_chosen] ~ ~ ~

#> Countdown for monster spawn delay (before they can actually chase survivors)
execute if score $MonsterSpawnDelay Statues.DynamicData matches 1.. run function statues:ingame/maps/common/warptimer
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0.. unless score $ReplayWatching Statues.DynamicData matches 1 run scoreboard players remove $MonsterSpawnDelay Statues.DynamicData 1
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0.. if score $ReplayWatching Statues.DynamicData matches 1 unless score $ReplayFreeze Statues.DynamicData matches 1 run scoreboard players remove $MonsterSpawnDelay Statues.DynamicData 1
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0 run function statues:ingame/maps/lockdown/monsterspawn
execute if score $MonsterSpawnDelay Statues.DynamicData matches 0 run bossbar set statues:warptimer visible false

# Tick players
execute as @a unless entity @s[team=!Monster,team=!Survivor] run function statues:ingame/maps/lockdown/tick_player



#> Objective Tracking using "Floors" Feature
# Fuel Objective
#execute if score $Objective Statues.DynamicData matches 0 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.0","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 0 run data modify storage statues:data objective_floor set value 0

#execute if score $Objective Statues.DynamicData matches 1 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.1","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 2 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.2","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 3 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.3","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 4 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.4","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 5 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.5","color":"aqua"}'

# Keycard 1 Objective
#execute if score $Objective Statues.DynamicData matches 6 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.6","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 6 run data modify storage statues:data objective_floor set value 0

#execute if score $Objective Statues.DynamicData matches 7 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.7","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 7 run data modify storage statues:data objective_floor set value -2

# Override
#execute if score $Objective Statues.DynamicData matches 8 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.8","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 8 run data modify storage statues:data objective_floor set value -2

# Main Power Objective
#execute if score $Objective Statues.DynamicData matches 9 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.9","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 9 run data modify storage statues:data objective_floor set value -4

# Keycard 2 Objective
#execute if score $Objective Statues.DynamicData matches 10 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.10","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 10 run data modify storage statues:data objective_floor set value -2

#execute if score $Objective Statues.DynamicData matches 11 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.11","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 11 run data modify storage statues:data objective_floor set value -3

# Code Objective
#execute if score $Objective Statues.DynamicData matches 12 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.12","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 12 run data modify storage statues:data objective_floor set value -4

#execute if score $Objective Statues.DynamicData matches 13 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.13","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 13 run data modify storage statues:data objective_floor set value -3

# Escape Objective
#execute if score $Objective Statues.DynamicData matches 14 run data modify storage statues:data objective_text set value '{"translate":"statues.text.lockdown.objective.actionbar.14","color":"aqua"}'
#execute if score $Objective Statues.DynamicData matches 14 run data modify storage statues:data objective_floor set value 0