execute if score dev_show_markers Statues.FeatureFlags matches 1 as @a[team=Dev] at @s at @e[type=marker,distance=..20] align xyz run particle minecraft:dust{color:[1.0, 0.7, 1.0],scale:1} ~0.5 ~0.5 ~0.5 0.4 0.4 0.4 0 5 normal @s
execute if score dev_show_markers_accurate Statues.FeatureFlags matches 1 as @a[team=Dev] at @s at @e[type=marker,distance=..20] run particle flame ~ ~ ~ 0 0 0 0 1 normal @s
execute if score dev_show_interactions Statues.FeatureFlags matches 1 as @a[team=Dev] at @s at @e[type=interaction,distance=..20] align xyz run particle minecraft:dust{color:[0.5,1.0,1.0],scale:1} ~0.5 ~0.5 ~0.5 0.4 0.4 0.4 0 5 normal @s


# minecraft:dust 0.5 1 1 1 ~0.5 ~0.5 ~0.5 0.4 0.4 0.4 0 5 normal @s