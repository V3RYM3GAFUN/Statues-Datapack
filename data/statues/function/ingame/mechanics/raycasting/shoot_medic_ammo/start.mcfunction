tag @s add raycaster
clear @s tipped_arrow[custom_data={"medic_ammo":true}] 1
playsound entity.arrow.shoot hostile @a

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/shoot_medic_ammo/tick

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast