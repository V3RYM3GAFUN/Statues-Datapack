#> Force the map to stay loaded to reset properly
forceload add 95 79 -112 -80

#> Brings back the text for Power objective, as well closes the doors related to it
execute as @e[tag=objective_facade_power] run data modify entity @s text set value "{\"translate\":\"statues.text.facade.objective.mainpower\",\"color\":\"dark_red\"}"
function statues:mechanics/power_doors/close

#> Backup generator door
execute as @e[tag=objective_facade_genkey,type=text_display] run data modify entity @s text set value "{\"translate\":\"statues.text.facade.objective.genkey\",\"color\":\"dark_red\"}"

#> Archive Room door
execute as @e[tag=objective_facade_genpower,type=text_display] run data modify entity @s text set value "{\"translate\":\"statues.text.facade.objective.genpower\",\"color\":\"dark_red\"}"

#> Lab access room door
execute as @e[tag=objective_facade_labkey,type=text_display] run data modify entity @s text set value "{\"translate\":\"statues.text.facade.objective.labkey\",\"color\":\"dark_red\"}"

#> Override doors
execute as @e[tag=objective_facade_override,type=text_display] run data modify entity @s text set value "{\"translate\":\"statues.text.facade.objective.override\",\"color\":\"dark_red\"}"
fill -5 78 48 -5 79 48 iron_block
fill -5 78 53 -5 79 53 iron_block

#> Remove the background of Main Power text
execute as @e[tag=objective_facade_power,type=text_display] run data modify entity @s background set value 0

#> High class office doors
execute as @e[type=text_display,tag=objective_facade_highclasskey] run data modify entity @s text set value "{\"translate\":\"statues.text.facade.objective.highclasskey\",\"color\":\"dark_red\"}"
execute at @e[type=minecraft:interaction,tag=objective_facade_highclasskey] run fill ~ ~ ~ ~ ~1 ~ glass_pane
fill -21 108 15 -21 109 15 air
fill 21 108 15 21 109 15 air

#> Book text 
execute as @e[type=text_display,tag=objective_facade_book] run data modify entity @s text set value "{\"translate\":\"statues.text.facade.objective.book\",\"color\":\"dark_red\"}"

#> Temporary solution for vents that go into the archives
# South
setblock 25 87 27 minecraft:air
setblock -25 87 27 minecraft:air

# North
setblock -25 87 -23 minecraft:air
setblock 25 87 -23 minecraft:air

# Armory doors
execute as @e[tag=facade_armory,type=text_display] run data modify entity @s text set value "{\"translate\":\"statues.text.facade.objective.armorykey\",\"color\":\"dark_red\"}"
execute as @e[tag=facade_armory,type=interaction] run tag @s remove opened
clone -41 31 14 -41 29 16 -41 36 14

#> Clears every container that had an item in it
execute as @e[tag=objective_reset] at @s run data merge block ~ ~ ~ {Items:[]}

#> Unload the map
forceload remove 95 79 -112 -80