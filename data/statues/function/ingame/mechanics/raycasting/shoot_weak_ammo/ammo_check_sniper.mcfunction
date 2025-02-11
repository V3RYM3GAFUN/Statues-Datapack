execute if items entity @s hotbar.* tipped_arrow[custom_data~{weak_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_weak_ammo/start

loot give @s loot statues:items/weapons/sniper/weak_ammo

advancement revoke @s only statues:guns/sniper/weak_ammo