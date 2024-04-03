execute unless function statues:feature_flags/check_doors_flags run return fail
execute as @e[tag=door,distance=..5,sort=nearest,limit=1] run tag @s add door_req_open
execute as @e[tag=door,distance=..5,sort=nearest,limit=1] run tag @s add door_finished