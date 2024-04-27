#> Brings back the text for Power objective, as well closes the doors related to it
execute as @e[tag=objective_facade_power] run data modify entity @s text set value "{'text':'Main Power','color':'dark_red'}"
function statues:ingame/mechanics/power_doors/close

#> Backup generator door
execute as @e[tag=objective_facade_genkey,type=text_display] run data modify entity @s text set value "{'text':'Generator key','color':'dark_red'}"

#> Archive Room door
execute as @e[tag=objective_facade_genpower,type=text_display] run data modify entity @s text set value "{'text':'Generator power','color':'dark_red'}"
#> elevator doors
fill -4 112 365 -3 113 365 iron_block
fill 5 112 365 6 113 365 iron_block

#> Lab access room door
execute as @e[tag=objective_facade_labkey,type=text_display] run data modify entity @s text set value "{'text':'Lab access keycard','color':'dark_red'}"

#> Override doors
execute as @e[tag=objective_facade_override,type=text_display] run data modify entity @s text set value '{text:"Emergency override",color:"dark_red"}'
fill -4 105 378 -4 106 378 iron_block
fill -4 105 383 -4 106 383 iron_block

#> Remove the background of Main Power text
execute as @e[tag=objective_facade_power,type=text_display] run data modify entity @s background set value 0

#> High class office doors
execute as @e[type=text_display,tag=objective_facade_highclasskey] run data modify entity @s text set value "{'text':'High class key','color':'dark_red'}"
execute at @e[type=minecraft:interaction,tag=objective_facade_highclasskey] run fill ~ ~ ~ ~ ~1 ~ glass_pane
fill -20 135 345 -20 136 345 air
fill 22 135 345 22 136 345 air

#> Book text 
execute as @e[type=text_display,tag=objective_facade_book] run data modify entity @s text set value "{'text':'CONFIDENTIAL book','color':'dark_red'}"

#> Temporary solution in the freight elevator
setblock 1 111 285 air

#> Temporary solution for vents that go into the archives
# South
setblock 26 114 357 minecraft:air
setblock -24 114 357 minecraft:air

# North
setblock -24 114 307 minecraft:air
setblock 26 114 307 minecraft:air

# Armory doors
execute as @e[tag=facade_armory,type=text_display] run data modify entity @s text set value "{'text':'Amoury keycard','color':'dark_red'}"
execute as @e[tag=facade_armory,type=interaction] run tag @s remove opened
clone -40 59 344 -40 57 346 -40 63 344