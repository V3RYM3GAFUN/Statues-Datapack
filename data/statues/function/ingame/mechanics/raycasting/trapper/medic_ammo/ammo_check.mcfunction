advancement revoke @s only statues:guns/trapper/medic_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{medic_ammo:1b}] run function statues:ingame/mechanics/raycasting/trapper/medic_ammo/start

execute if items entity @s weapon *[custom_data~{is_trapper_gun:true}] run return run function statues:ingame/mechanics/raycasting/trapper/medic_ammo/reset {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/trapper/medic_ammo/reset {hand:"offhand"}