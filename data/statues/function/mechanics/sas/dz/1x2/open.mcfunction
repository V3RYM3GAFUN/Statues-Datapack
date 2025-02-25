playsound statues:game.door.small.open ambient @a ~ ~1 ~ 1 0.9

fill ~ ~ ~ ~ ~1 ~ air replace barrier

execute align xyz as @n[type=item_display,tag=1x2display,dy=2] run data merge entity @s {transformation:{translation:[0.98f,0f,0f]},interpolation_duration:3,start_interpolation:0}