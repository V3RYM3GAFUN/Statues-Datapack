execute unless function statues:feature_flags/check_elevator_3x3x3_flags run return fail

$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_room_3x3x3_col_main,tag=!elevator_room_3x3x3_col_part_top,type=minecraft:armor_stand,limit=9,sort=nearest] at @s run tp ~ $(elevator_collision_y) ~
$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_room_3x3x3_col_main,tag=elevator_room_3x3x3_col_part_top,type=minecraft:armor_stand,limit=9,sort=nearest] at @s at @e[tag=elevator_room_3x3x3_col_main,tag=!elevator_room_3x3x3_col_part_top,type=minecraft:armor_stand,limit=1,sort=nearest] run tp @s ~ ~4 ~
