tag @s add raycaster
clear @s tipped_arrow[custom_data={"weak_ammo":true}] 1
playsound item.crossbow.shoot hostile @a ~ ~ ~ 1 2

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/shotgun/shoot_weak_ammo/tick

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast