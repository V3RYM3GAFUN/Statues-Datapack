#> Prevents players from having Absorption if they have no extra health from it
execute if score $Timer.Ticks Statues.DynamicData matches 0 run effect clear @a[nbt={AbsorptionAmount:0f}] minecraft:absorption

#> Gives survivors weakness to prevent them from hitting each other. This is used so the medic can still shoot his healing arrows
effect give @a[team=Survivor] weakness infinite 0 true

execute as @e[type=item] run function statues:ingame/mechanics/misc_tick_item

