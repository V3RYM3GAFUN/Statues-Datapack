execute unless function statues:feature_flags/check_elevator_freight_flags run return fail

$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_room_freight_col_main,type=minecraft:armor_stand,limit=9,sort=nearest] at @s run tp ~ ~$(elevator_collision_y_offset) ~
