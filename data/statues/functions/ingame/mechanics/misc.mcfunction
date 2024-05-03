#> Gives survivors weakness to prevent them from hitting each other. This is used so the medic can still shoot his healing arrows
effect give @a[team=Survivor] weakness infinite 0 true

execute if entity @a[scores={Statues.Drop=1..}] as @e[type=item] run function statues:ingame/mechanics/misc_on_drop
execute as @e[type=item] at @s run function statues:ingame/mechanics/misc_tick_item

execute as @a[team=Survivor] at @s if entity @e[tag=locker,distance=..2] run function statues:ingame/mechanics/survivors/locker
