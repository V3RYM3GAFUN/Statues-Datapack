# This function gets called from the statues:player_damaged advancement

#> Prevents players from having Absorption if they have no extra health from it
effect clear @a[nbt={AbsorptionAmount:0f}] minecraft:absorption
scoreboard players remove @s[team=Survivor] Statues.Advancements.IngameNoDamage 1
execute if entity @s[team=Survivor] run function statues:mechanics/survivors_healthbar/update_scoreboard
scoreboard players set @s Statues.DamageTaken 0
advancement revoke @s only statues:player_damaged
