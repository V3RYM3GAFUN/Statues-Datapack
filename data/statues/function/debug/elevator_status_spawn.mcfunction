$execute align xyz positioned ~0.5 ~2.5 ~0.5 run summon minecraft:item_display ~$(offset_x) ~$(offset_y) ~$(offset_z) {Tags:["elevator_status","elevator_status_new"],item:{id:"minecraft:black_concrete",Count:1b},brightness:{block:15,sky:0}}
data merge entity @e[tag=elevator_status_new,limit=1] {transformation:{scale:[0.5f,0.5f,0.5f]}}
tag @e[tag=elevator_status_new] remove elevator_status_new