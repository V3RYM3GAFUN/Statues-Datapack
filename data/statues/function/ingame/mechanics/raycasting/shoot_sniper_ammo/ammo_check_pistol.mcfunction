execute if items entity @s hotbar.* tipped_arrow[custom_data~{sniper_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/start

loot give @s loot statues:items/weapons/anti_anomaly_gun/sniper_ammo

advancement revoke @s only statues:guns/pistol/sniper_ammo