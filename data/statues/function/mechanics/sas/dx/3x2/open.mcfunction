playsound statues:game.door.large.open ambient @a ~ ~1 ~ 1 0.75

fill ~-2 ~ ~ ~2 ~1 ~ air replace glass

# execute align xyz as @n[type=item_display,tag=5x3right,dy=2] run data merge entity @s {transformation:{translation:[2.625f,0.5f,0f]},interpolation_duration:5,start_interpolation:0}
# execute align xyz as @n[type=item_display,tag=5x3left,dy=2] run data merge entity @s {transformation:{translation:[-2.675f,0.5f,0f]},interpolation_duration:5,start_interpolation:0}