execute unless function statues:feature_flags/check_doors_flags run return fail

data merge entity @s[tag=doord_init_open_left_dx] {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0.99f,0f,0f]}}
tag @s remove doord_init_open_left_dx

data merge entity @s[tag=doord_init_open_right_dx] {interpolation_duration:3,start_interpolation:0,transformation:{translation:[-0.99f,0f,0f]}}
tag @s remove doord_init_open_right_dx

data merge entity @s[tag=doord_init_open_left_dz] {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,0f,0.99f]}}
tag @s remove doord_init_open_left_dz

data merge entity @s[tag=doord_init_open_right_dz] {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,0f,-0.99f]}}
tag @s remove doord_init_open_right_dz

data merge entity @s[tag=doord_init_close] {interpolation_duration:3,start_interpolation:0,transformation:{translation:[0f,0f,0f]}}
tag @s remove doord_init_close

tag @s remove doord_init