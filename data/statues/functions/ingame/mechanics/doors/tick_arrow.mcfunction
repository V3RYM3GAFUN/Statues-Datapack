execute unless function statues:feature_flags/check_doors_flags run return fail

execute if entity @s[y_rotation=0] align xyz positioned ~ ~ ~-0.5 as @e[type=#minecraft:impact_projectiles,dx=1,dy=1,dz=0] run data merge entity @s {Motion:[0d,-1d,0d]}
execute if entity @s[y_rotation=90] align xyz positioned ~-0.5 ~ ~ as @e[type=#minecraft:impact_projectiles,dx=0,dy=1,dz=1] run data merge entity @s {Motion:[0d,-1d,0d]}
