execute unless function statues:feature_flags/check_elevator_2x3x2_flags run return fail

summon minecraft:armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["elevator_room_2x3x2_col_main", "elevator_room_2x3x2_col_part"],Invisible:1b,Passengers:[{id:"minecraft:shulker",Color:2,NoAI:1b,Silent:1b,active_effects:[{duration:-1,show_particles:0b,id:"minecraft:invisibility"}],Invulnerable:1b,Health:1,Tags:["elevator_room_2x3x2_col_shulker", "elevator_room_2x3x2_col_part"]}]}

summon minecraft:armor_stand ~ ~2 ~ {NoGravity:1b,Marker:1b,Tags:["elevator_room_2x3x2_col_main", "elevator_room_2x3x2_col_part", "elevator_room_2x3x2_col_part_top"],Invisible:1b,Passengers:[{id:"minecraft:shulker",Color:2,NoAI:1b,Silent:1b,active_effects:[{duration:-1,show_particles:0b,id:"minecraft:invisibility"}],Invulnerable:1b,Health:1,Tags:["elevator_room_2x3x2_col_shulker", "elevator_room_2x3x2_col_part", "elevator_room_2x3x2_col_part_top"]}]}

tag @s add elevator_room_2x3x2_gencol