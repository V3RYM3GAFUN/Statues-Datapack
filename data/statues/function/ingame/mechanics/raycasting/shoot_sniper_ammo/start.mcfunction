tag @s add raycaster
clear @s tipped_arrow[custom_data={"sniper_ammo":true}] 1
playsound item.crossbow.shoot hostile @a

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/tick

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast