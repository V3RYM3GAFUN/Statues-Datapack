playsound statues:game.door.small.close ambient @a ~ ~1 ~ 1 0.9

fill ~ ~ ~ ~ ~1 ~ barrier replace air

execute align xyz as @n[type=item_display,tag=1x2display,dy=2] run data merge entity @s {transformation:{translation:[0f,0f,0f]},interpolation_duration:5,start_interpolation:0}