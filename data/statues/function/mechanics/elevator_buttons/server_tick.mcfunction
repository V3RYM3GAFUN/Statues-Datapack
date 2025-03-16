execute unless function statues:feature_flags/check_elevator_buttons_flags run return fail

execute as @e[type=minecraft:marker,tag=elevator_button,x=0] at @s run function statues:mechanics/elevator_buttons/tick with entity @s data
