tag @s add raycaster
clear @s tipped_arrow[custom_data={"sniper_ammo":true}] 1
playsound item.crossbow.shoot hostile @a ~ ~ ~ 1 1.3

rotate @s ~ ~-5

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/raycast/sniper

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast