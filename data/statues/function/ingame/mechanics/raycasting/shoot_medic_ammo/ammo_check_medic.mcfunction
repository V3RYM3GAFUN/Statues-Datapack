execute if items entity @s hotbar.* tipped_arrow[custom_data~{medic_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_medic_ammo/start

loot give @s loot statues:items/weapons/medic_gun/medic_ammo

advancement revoke @s only statues:guns/medic/medic_ammo