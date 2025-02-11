tag @s add raycaster

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/shoot_insects/tick

loot give @s loot statues:items/monsters/004

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast

advancement revoke @s only statues:guns/insects