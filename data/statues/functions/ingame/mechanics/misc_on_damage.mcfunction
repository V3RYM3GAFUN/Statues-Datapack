# This function gets called from the statues:player_damaged advancement

#> Prevents players from having Absorption if they have no extra health from it
effect clear @a[nbt={AbsorptionAmount:0f}] minecraft:absorption
scoreboard players remove @s[team=Survivor] Statues.Advancements.IngameNoDamage 1
execute if entity @s[team=Survivor] run function statues:ingame/mechanics/survivors/healthbar/update_scoreboard
advancement revoke @s only statues:player_damaged
