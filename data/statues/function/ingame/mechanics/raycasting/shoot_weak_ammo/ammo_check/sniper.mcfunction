advancement revoke @s only statues:guns/sniper/weak_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{weak_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_weak_ammo/start

execute if items entity @s weapon *[custom_data~{is_sniper:true}] run return run function statues:ingame/mechanics/raycasting/shoot_weak_ammo/reset/sniper {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/shoot_weak_ammo/reset/sniper {hand:"offhand"}