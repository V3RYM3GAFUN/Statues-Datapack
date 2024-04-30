#> Gives survivors weakness to prevent them from hitting each other. This is used so the medic can still shoot his healing arrows
effect give @a[team=Survivor] weakness infinite 0 true

execute if entity @a[scores={Statues.Drop=1..}] as @e[type=item] run function statues:ingame/mechanics/misc_on_drop
execute as @e[type=item] run function statues:ingame/mechanics/misc_tick_item

execute as @a[team=Survivor] at @s run function statues:ingame/mechanics/survivors/monsterdistance
execute as @a[team=Survivor] at @s if entity @e[tag=locker,distance=..2] run function statues:ingame/mechanics/survivors/locker

execute as @a[team=Monster] at @s run function statues:ingame/mechanics/monsters/survivordistance

execute if score blood_traces Statues.FeatureFlags matches 1 as @a[team=Survivor] at @s run function statues:ingame/mechanics/survivors/leave_trail
execute if score blood_traces Statues.FeatureFlags matches 1 as @e[tag=survivor_blood_trail] at @s run function statues:ingame/mechanics/monsters/trail_tick