playsound statues:game.door.small.close ambient @a ~ ~1 ~ 1 1.15

fill ~-1 ~ ~ ~1 ~1 ~ glass_pane replace air

# execute align xyz as @n[type=item_display,tag=5x3right,dy=2] run data merge entity @s {transformation:{translation:[0f,0.5f,0f]},interpolation_duration:5,start_interpolation:0}
# execute align xyz as @n[type=item_display,tag=5x3left,dy=2] run data merge entity @s {transformation:{translation:[0f,0.5f,0f]},interpolation_duration:5,start_interpolation:0}