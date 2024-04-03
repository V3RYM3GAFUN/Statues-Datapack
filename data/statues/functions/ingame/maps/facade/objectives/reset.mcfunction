#> Brings back the text for Power objective, as well closes the doors related to it
execute as @e[tag=objective_power] run data modify entity @s text set value "{'text':'Main Power','color':'dark_red'}"
function statues:ingame/mechanics/power_doors/close

execute as @e[tag=objective_facade_genkey,type=text_display] run data modify entity @s text set value "{'text':'Generator key','color':'dark_red'}"