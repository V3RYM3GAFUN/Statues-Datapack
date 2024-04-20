#> Prevents players from having Absorption if they have no extra health from it
effect clear @a[nbt={AbsorptionAmount:0f}] minecraft:absorption

#> Gives survivors weakness to prevent them from hitting each other. This is used so the medic can still shoot his healing arrows
effect give @a[team=Survivor] weakness infinite 0 true

#> Prevent dropping non-objective items 
execute as @e[type=item,predicate=!statues:is_objective_item] run function statues:ingame/mechanics/nodrop

#> Prevents items from despawning, notably the key item
execute as @e[type=item] run data modify entity @s Age set value -32768s

#> Prevents players who aren't a survivor from picking up objective items

execute as @e[type=item,predicate=statues:is_objective_item] at @s run data modify entity @s Owner set from entity @p[team=Survivor] UUID
# execute as @e[type=item,nbt={Item:{tag:{Tags:["objective"]}}}] run data merge entity @s {PickupDelay:32767s}
# execute as @e[type=item,nbt={Item:{tag:{Tags:["objective"]}}}] at @s if entity @a[team=Survivor,distance=..0.5] run data merge entity @s {PickupDelay:0s}
# execute as @e[type=item,nbt={Item:{tag:{Tags:["objective"]}}}] at @s if entity @a[team=Survivor,distance=..0.5] run data modify entity @s Owner set from entity @p[team=Survivor] UUID

