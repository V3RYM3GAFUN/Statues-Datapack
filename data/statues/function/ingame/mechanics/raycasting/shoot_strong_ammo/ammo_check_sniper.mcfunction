execute if items entity @s hotbar.* tipped_arrow[custom_data~{strong_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_strong_ammo/start

loot give @s loot statues:items/weapons/sniper/strong_ammo

advancement revoke @s only statues:guns/sniper/strong_ammo