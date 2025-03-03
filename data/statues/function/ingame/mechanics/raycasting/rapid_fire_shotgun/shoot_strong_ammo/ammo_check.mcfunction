advancement revoke @s only statues:guns/rapid_fire_shotgun/strong_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{strong_ammo:1b}] run function statues:ingame/mechanics/raycasting/rapid_fire_shotgun/shoot_strong_ammo/start

execute if items entity @s weapon *[custom_data~{is_rapid_fire_shotgun:true}] run return run function statues:ingame/mechanics/raycasting/rapid_fire_shotgun/shoot_strong_ammo/reset {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/rapid_fire_shotgun/shoot_strong_ammo/reset {hand:"offhand"}