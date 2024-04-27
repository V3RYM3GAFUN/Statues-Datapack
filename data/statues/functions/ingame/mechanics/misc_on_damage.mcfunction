# This function gets called from the statues:player_damaged advancement

#> Prevents players from having Absorption if they have no extra health from it
effect clear @a[nbt={AbsorptionAmount:0f}] minecraft:absorption
