# Clear Text displays
execute as @e[tag=objective_lockdown_keycard1,type=text_display] run data modify entity @s text set value '{"text":""}'

# Put interaction entities out of the way
execute as @e[type=interaction,tag=objective_lockdown_keycard1] run data modify entity @s height set value 0