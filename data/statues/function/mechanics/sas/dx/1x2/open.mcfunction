playsound statues:game.door.small.open ambient @a ~ ~1 ~ 1 0.9

fill ~ ~ ~ ~ ~1 ~ air replace barrier

execute align xyz as @e[type=block_display,tag=1x2display,dy=2,limit=2] run data merge entity @s {transformation:{translation:[-1.49f,-0.5f,-1f]},interpolation_duration:3,start_interpolation:0}