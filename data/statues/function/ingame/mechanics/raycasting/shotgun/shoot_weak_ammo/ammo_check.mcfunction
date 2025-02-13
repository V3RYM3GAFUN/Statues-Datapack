advancement revoke @s only statues:guns/shotgun/weak_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{weak_ammo:1b}] run function statues:ingame/mechanics/raycasting/shotgun/shoot_weak_ammo/start

execute if items entity @s weapon *[custom_data~{is_shotgun:true}] run return run function statues:ingame/mechanics/raycasting/shotgun/shoot_weak_ammo/reset {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/shotgun/shoot_weak_ammo/reset {hand:"offhand"}