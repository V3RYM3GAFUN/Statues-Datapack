execute unless function statues:feature_flags/check_compass_tracker_flags run return fail
$tag @e[tag=compass_target,sort=nearest,nbt={data:{selector:$(compass_selector)}},limit=1] add compass_target_selected
execute store result score $CompassX Statues.Data run data get entity @e[tag=compass_target_selected,limit=1] Pos[0]
execute store result storage statues:data compass_target_pos_x int 1 run scoreboard players get $CompassX Statues.Data
execute store result score $CompassY Statues.Data run data get entity @e[tag=compass_target_selected,limit=1] Pos[1]
execute store result storage statues:data compass_target_pos_y int 1 run scoreboard players get $CompassY Statues.Data
execute store result score $CompassZ Statues.Data run data get entity @e[tag=compass_target_selected,limit=1] Pos[2]
execute store result storage statues:data compass_target_pos_z int 1 run scoreboard players get $CompassZ Statues.Data
function statues:ingame/mechanics/compass_tracker/tick_player_inventory with storage statues:data
tag @e[tag=compass_target_selected] remove compass_target_selected
