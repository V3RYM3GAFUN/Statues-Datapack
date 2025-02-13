advancement revoke @s only statues:guns/pistol/strong_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{strong_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_strong_ammo/start

execute if items entity @s weapon *[custom_data~{is_gun:true}] run return run function statues:ingame/mechanics/raycasting/shoot_strong_ammo/reset/pistol {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/shoot_strong_ammo/reset/pistol {hand:"offhand"}