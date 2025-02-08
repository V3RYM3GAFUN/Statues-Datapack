tag @s add raycaster
clear @s arrow[custom_data={"weak_ammo":true}] 1
playsound entity.arrow.shoot hostile @a

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/shoot_weak_ammo/tick

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast