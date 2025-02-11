execute if items entity @s hotbar.* tipped_arrow[custom_data~{medic_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_medic_ammo/start

loot give @s loot statues:items/weapons/trapper_gun/medic_ammo

advancement revoke @s only statues:guns/trapper/medic_ammo