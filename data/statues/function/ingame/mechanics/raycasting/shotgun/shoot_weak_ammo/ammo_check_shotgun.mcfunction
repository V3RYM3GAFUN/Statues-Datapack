execute if items entity @s hotbar.* tipped_arrow[custom_data~{weak_ammo:1b}] run function statues:ingame/mechanics/raycasting/shotgun/shoot_weak_ammo/start

loot give @s loot statues:items/weapons/shotgun/weak_ammo

advancement revoke @s only statues:guns/shotgun/weak_ammo