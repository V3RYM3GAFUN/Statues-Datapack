execute unless function statues:feature_flags/check_desk_button_flags run return fail

execute align xyz run summon minecraft:block_display ~0.28125 ~-0.265625 ~0.28125 {Tags:["desk_button","desk_button_main"],block_state:{Name:"minecraft:red_concrete"},brightness:{sky:0,block:15}}
execute as @e[tag=desk_button_main] at @s run data merge entity @s {transformation:{scale:[0.4375f,0.4375f,0.4375f]}}
execute align xyz run summon minecraft:block_display ~0.1875 ~-0.56875 ~0.1875 {Tags:["desk_button","desk_button_frame"],block_state:{Name:"minecraft:cyan_terracotta"},brightness:{sky:0,block:15}}
execute as @e[tag=desk_button_frame] at @s run data merge entity @s {transformation:{scale:[0.625f,0.625f,0.625f]}}
# the "ub" here stands for "unknown/undefined behavior" (replace the tag with another desk_button_interaction_* after it has been created to bind an action to it)
execute align xyz run summon minecraft:interaction ~0.5 ~-0.265625 ~0.5 {Tags:["desk_button","desk_button_interaction","desk_button_interaction_ub"],width:0.4375f,height:0.4375f,response:1b}
