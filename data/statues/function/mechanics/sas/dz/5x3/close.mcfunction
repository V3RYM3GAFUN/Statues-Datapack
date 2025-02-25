playsound statues:game.door.large.close ambient @a ~ ~1 ~ 1 0.75

fill ~ ~ ~-2 ~ ~2 ~2 barrier replace air

execute align xyz as @n[type=item_display,tag=5x3display,dy=2] run data merge entity @s {transformation:{translation:[0f,0.5f,0f]},interpolation_duration:5,start_interpolation:0}