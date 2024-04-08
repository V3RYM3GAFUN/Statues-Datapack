$tag @e[tag=test_compass_target,sort=nearest,nbt={data:{selector:$(compass_selector)}},limit=1] add test_compass_target_selected
execute store result score $TestCompassX Statues.Data run data get entity @e[tag=test_compass_target_selected,limit=1] Pos[0]
execute store result storage statues:data compass_target_pos_x int 1 run scoreboard players get $TestCompassX Statues.Data
execute store result score $TestCompassY Statues.Data run data get entity @e[tag=test_compass_target_selected,limit=1] Pos[1]
execute store result storage statues:data compass_target_pos_y int 1 run scoreboard players get $TestCompassY Statues.Data
execute store result score $TestCompassZ Statues.Data run data get entity @e[tag=test_compass_target_selected,limit=1] Pos[2]
execute store result storage statues:data compass_target_pos_z int 1 run scoreboard players get $TestCompassZ Statues.Data
function statues:ingame/mechanics/compass_tracker/tick_player_inventory with storage statues:data
tag @e[tag=test_compass_target_selected] remove test_compass_target_selected