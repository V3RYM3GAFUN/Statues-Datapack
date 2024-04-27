#> Gives survivors weakness to prevent them from hitting each other. This is used so the medic can still shoot his healing arrows
effect give @a[team=Survivor] weakness infinite 0 true

execute as @e[type=item] run function statues:ingame/mechanics/misc_tick_item
