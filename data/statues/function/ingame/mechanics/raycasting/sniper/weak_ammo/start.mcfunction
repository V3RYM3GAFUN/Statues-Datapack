tag @s add raycaster
clear @s tipped_arrow[custom_data={"weak_ammo":true}] 1
playsound item.crossbow.shoot hostile @a ~ ~ ~ 1 0.75

tp @s ^ ^ ^ ~ ~-10

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/raycast/weak_ammo

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast