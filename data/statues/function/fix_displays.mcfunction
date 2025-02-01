execute as @e[tag=3x3right] run data modify entity @s item set value {components:{"custom_model_data": {strings:["3x3_door_right"]}}, count: 1, id:stick}
execute as @e[tag=3x3right] run data modify entity @s transformation set value {translation:[0f,0f,0f], left_rotation:[1.0f,0.0f,0.0f,0.0f], right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1f,1f]}

execute as @e[tag=3x3left] run data modify entity @s item set value {components:{"custom_model_data": {strings:["3x3_door_left"]}}, count: 1, id:stick}
execute as @e[tag=3x3left] run data modify entity @s transformation set value {translation:[0f,0f,0f], left_rotation:[0f,0.0f,0.0f,1f], right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1f,1f]}

execute as @e[tag=elevator_room_3x3x3] run data modify entity @s item set value {components:{"custom_model_data": {strings:["elevator_new"]}}, count: 1, id:stick}
execute as @e[tag=elevator_room_2x3x2] run data modify entity @s item set value {components:{"custom_model_data": {strings:["small_elevator"]}}, count: 1, id:stick}
execute as @e[tag=elevator_room_freight] run data modify entity @s item set value {components:{"custom_model_data": {strings:["freight_elevator"]}}, count: 1, id:stick}