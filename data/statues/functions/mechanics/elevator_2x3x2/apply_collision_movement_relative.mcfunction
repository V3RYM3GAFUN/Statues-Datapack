execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail

$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_room_2x3x2_col_main,tag=!elevator_room_2x3x2_col_part_top,type=minecraft:armor_stand,limit=1,sort=nearest] at @s run tp ~ ~$(elevator_collision_y_offset) ~
$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_room_2x3x2_col_main,tag=elevator_room_2x3x2_col_part_top,type=minecraft:armor_stand,limit=1,sort=nearest] at @s at @e[tag=elevator_room_2x3x2_col_main,tag=!elevator_room_2x3x2_col_part_top,type=minecraft:armor_stand,limit=1,sort=nearest] run tp @s ~ ~4 ~
