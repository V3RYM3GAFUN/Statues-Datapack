#> Brings back the text for Power objective, as well closes the doors related to it
execute as @e[tag=objective_power] run data modify entity @s text set value "{'text':'Main Power','color':'dark_red'}"
function statues:ingame/mechanics/power_doors/close

#> Backup generator door
execute as @e[tag=objective_facade_genkey,type=text_display] run data modify entity @s text set value "{'text':'Generator key','color':'dark_red'}"

#> Archive Room door
execute as @e[tag=objective_facade_genpower,type=text_display] run data modify entity @s text set value "{'text':'Generator power','color':'dark_red'}"

#> Lab access room door
execute as @e[tag=objective_facade_labkey,type=text_display] run data modify entity @s text set value "{'text':'Lab access keycard','color':'dark_red'}"

#> High class office doors
execute as @e[type=text_display,tag=objective_facade_highclasskey] run data modify entity @s text set value "{'text':'High class key','color':'dark_red'}"
execute at @e[type=minecraft:interaction,tag=objective_facade_highclasskey] run fill ~ ~ ~ ~ ~1 ~ glass_pane
fill -20 135 345 -20 136 345 air
fill 22 135 345 22 136 345 air