tag @s add raycaster
clear @s tipped_arrow[custom_data={"strong_ammo":true}] 1
playsound entity.arrow.shoot hostile @a ~ ~ ~ 1 1

tp @s ^ ^ ^ ~ ~-1.5

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/raycast/strong_ammo

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast