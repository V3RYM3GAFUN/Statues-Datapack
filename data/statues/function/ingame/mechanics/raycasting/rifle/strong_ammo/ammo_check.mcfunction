advancement revoke @s only statues:guns/rifle/strong_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{strong_ammo:1b}] run function statues:ingame/mechanics/raycasting/rifle/strong_ammo/start

execute if items entity @s weapon *[custom_data~{is_rifle:true}] run return run function statues:ingame/mechanics/raycasting/rifle/strong_ammo/reset {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/rifle/strong_ammo/reset {hand:"offhand"}