execute unless function statues:feature_flags/check_compass_tracker_flags run return fail
execute store result storage statues:data compass_selector int 1 run scoreboard players get $CompassSelector Statues.Data
execute as @a[tag=has_compass_tracker] at @s run function statues:ingame/mechanics/compass_tracker/tick_player with storage statues:data
clear @a[tag=!has_compass_tracker] compass{is_compass_tracker:1b}
