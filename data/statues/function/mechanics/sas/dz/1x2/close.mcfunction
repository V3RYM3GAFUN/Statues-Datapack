playsound statues:game.door.small.close ambient @a ~ ~1 ~ 1 0.9

fill ~ ~ ~ ~ ~1 ~ barrier replace air

execute align xyz positioned ~ ~ ~ unless entity @n[tag=1x2display,dy=0] run summon minecraft:block_display ~.5 ~.5 ~.5 {Tags:["1x2display"],block_state:{Name:"minecraft:iron_door",Properties:{half:"lower",hinge:"right"}},Rotation:[90f,0f]}
execute align xyz positioned ~ ~1 ~ unless entity @n[tag=1x2display,dy=0] run summon minecraft:block_display ~.5 ~.5 ~.5 {Tags:["1x2display"],block_state:{Name:"minecraft:iron_door",Properties:{half:"upper",hinge:"right"}},Rotation:[90f,0f]}

execute align xyz as @e[type=block_display,tag=1x2display,dy=2,limit=2] run data merge entity @s {transformation:{translation:[-0.5f,-0.5f,-1f]},interpolation_duration:3,start_interpolation:0}
