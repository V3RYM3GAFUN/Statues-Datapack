advancement revoke @s only statues:guns/pistol/sniper_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{sniper_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/start

execute if items entity @s weapon *[custom_data~{is_gun:true}] run return run function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/reset/pistol {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/reset/pistol {hand:"offhand"}