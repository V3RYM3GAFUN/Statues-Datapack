#> Prevent dropping non-objective items
execute if entity @s[tag=!objective_item] run function statues:ingame/mechanics/nodrop

#> Prevents players who aren't a survivor from picking up objective items
data modify entity @s[tag=objective_item] Owner set from entity @p[team=Survivor] UUID
# execute if entity @s[nbt={Item:{tag:{Tags:["objective"]}}}] run data merge entity @s {PickupDelay:32767s}
# execute if entity @s[nbt={Item:{tag:{Tags:["objective"]}}}] at @s if entity @a[team=Survivor,distance=..0.5] run data merge entity @s {PickupDelay:0s}
# execute if entity @s[nbt={Item:{tag:{Tags:["objective"]}}}] at @s if entity @a[team=Survivor,distance=..0.5] run data modify entity @s Owner set from entity @p[team=Survivor] UUID
