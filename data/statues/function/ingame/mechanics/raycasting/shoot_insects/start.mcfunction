tag @s add raycaster

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/shoot_insects/tick

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast