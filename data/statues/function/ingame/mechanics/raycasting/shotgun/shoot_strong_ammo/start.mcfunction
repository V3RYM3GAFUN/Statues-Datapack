tag @s add raycaster
clear @s arrow[custom_data={"strong_ammo":true}] 1
playsound item.crossbow.shoot hostile @a

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/shotgun/shoot_strong_ammo/tick

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast