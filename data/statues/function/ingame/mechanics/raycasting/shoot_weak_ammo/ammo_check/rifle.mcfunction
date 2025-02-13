advancement revoke @s only statues:guns/rifle/weak_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{weak_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_weak_ammo/start

execute if items entity @s weapon *[custom_data~{is_rifle:true}] run return run function statues:ingame/mechanics/raycasting/shoot_weak_ammo/reset/rifle {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/shoot_weak_ammo/reset/rifle {hand:"offhand"}